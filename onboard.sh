#!/usr/bin/env bash
# Attunio onboarding: one-time fetch-and-bake of the assessment package.
# Downloads every file listed in package/manifest.json from the public repo,
# verifies byte counts and SHA-256 checksums, and installs a local copy.
# After this runs, Attunio never needs the repo again.
#
# Usage:
#   bash onboard.sh                      # fetch pinned release from GitHub
#   bash onboard.sh --local /path/to/package   # install from a local copy (offline)
#   ATTUNIO_HOME=/some/dir bash onboard.sh     # custom install location
set -euo pipefail

VERSION="${ATTUNIO_VERSION:-v1.0.7}"
REPO_RAW="${ATTUNIO_REPO_RAW:-https://raw.githubusercontent.com/gambrill/attunio/${VERSION}/package}"
HOME_DIR="${ATTUNIO_HOME:-/home/box/agent-data/attunio}"
LOCAL_SRC=""
if [ "${1:-}" = "--local" ]; then LOCAL_SRC="${2:?--local needs a directory}"; fi

STAGE="$(mktemp -d)"; trap 'rm -rf "$STAGE"' EXIT

fetch() {  # fetch <filename> into $STAGE
  if [ -n "$LOCAL_SRC" ]; then cp "$LOCAL_SRC/$1" "$STAGE/$1"
  else curl -fsSL --retry 3 "$REPO_RAW/$1" -o "$STAGE/$1"; fi
}

fetch manifest.json
FILES=$(python3 -c 'import json,sys;print("\n".join(json.load(open(sys.argv[1])).keys()))' "$STAGE/manifest.json")
for f in $FILES; do fetch "$f"; done

python3 - "$STAGE" <<'PY'
import csv, hashlib, json, os, sys, collections
stage = sys.argv[1]
man = json.load(open(os.path.join(stage, "manifest.json")))
for name, meta in man.items():
    data = open(os.path.join(stage, name), "rb").read()
    if len(data) != meta["bytes"] or hashlib.sha256(data).hexdigest() != meta["sha256"]:
        sys.exit(f"CHECKSUM FAIL: {name}")
rows = list(csv.DictReader(open(os.path.join(stage, "02-Question-Bank.csv"), encoding="utf-8")))
kinds = collections.Counter(r["kind"] for r in rows)
assert len(rows) == 144 and len({r["id"] for r in rows}) == 144, "question count/ID check failed"
assert kinds == {"core": 96, "followup": 24, "context": 24}, f"kind counts wrong: {kinds}"
cfg = json.load(open(os.path.join(stage, "03-Definitions-and-Archetypes.json")))
ids = {r["id"] for r in rows}
missing = [q for q in cfg["default_session"] if q not in ids]
assert len(cfg["default_session"]) == 20 and not missing, f"default session bad: {missing}"
print(f"verified {len(man)} files, 144 questions, package {cfg.get('package_version')}")
PY

mkdir -p "$HOME_DIR"
rm -rf "$HOME_DIR/package.new" && mkdir "$HOME_DIR/package.new"
for f in $FILES; do cp "$STAGE/$f" "$HOME_DIR/package.new/$f"; done
cp "$STAGE/manifest.json" "$HOME_DIR/package.new/manifest.json"
if [ -d "$HOME_DIR/package" ]; then chmod -R u+w "$HOME_DIR/package"; rm -rf "$HOME_DIR/package"; fi
mv "$HOME_DIR/package.new" "$HOME_DIR/package"
chmod -R a-w "$HOME_DIR/package"

# Private profile store (owner only) and the shared bot-brief location.
mkdir -p "$HOME_DIR/profile" "$HOME_DIR/briefs"
chmod 700 "$HOME_DIR/profile"
SRC_DESC="${LOCAL_SRC:-$REPO_RAW}"
python3 - "$HOME_DIR" "$VERSION" "$SRC_DESC" <<'PY'
import json, sys, datetime
home, ver, src = sys.argv[1:4]
json.dump({"package_version": ver, "installed_at": datetime.datetime.now().astimezone().isoformat(timespec="seconds"),
           "source": src, "standalone": True}, open(f"{home}/INSTALLED.json", "w"), indent=2)
PY
echo "Attunio package installed at $HOME_DIR/package (standalone; repo no longer needed)."
