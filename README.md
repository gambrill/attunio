# Attunio

**Your Grok Bot Team Tuned to How You Operate**

Attunio builds your Personal Operating Profile so your bots know how to communicate with you, support your strengths, and help where you tend to get stuck.

This repo holds Attunio's assessment package (questions, scoring rules, archetypes). It is fetched **once**, during onboarding. After that, your Attunio bot runs fully standalone and never contacts this repo again. Your answers and profile never come here; they stay on your own Grok Bot computer.

## What's in `package/`
| File | What it is |
|---|---|
| `01-START-HERE.md` | Overview and handoff instructions |
| `02-Question-Bank.csv` | 144 original questions: 96 scored (12 per dimension), 24 follow-ups, 24 context |
| `03-Definitions-and-Archetypes.json` | Dimensions, bands, archetype rules, default 20-question session |
| `04-Scoring-and-Session-Rules.md` | Deterministic scoring and branching |
| `05-Dimensions-and-Archetypes.md` | Interpretation and coaching options for both poles, 8 archetypes |
| `06-Coaching-Memory-Rules.md` | Memory, consent, corrections, sharing |
| `07-Report-and-Worked-Examples.md` | Report template and worked examples |
| `08-Readable-Question-Bank.md` | Human-readable rendering of every question |
| `09-Validation-Results.json` | Structural checks (not psychometric validation) |
| `manifest.json` | Byte counts and SHA-256 checksums used by onboarding |

## Onboarding (run by the bot)
```bash
curl -fsSL https://raw.githubusercontent.com/gambrill/attunio/v1.0.5/onboard.sh | bash
```
The script downloads every file in the manifest, verifies sizes and checksums and question counts, then installs to `/home/box/agent-data/attunio/package` (read-only), and creates a private `profile/` folder (owner-only) and a `briefs/` folder for the team bot brief.

## Not a clinical tool
Attunio is an original coaching and reflection tool. Its questions, bands, and archetypes have not been psychometrically validated. It is not a diagnosis and must not be used for hiring, promotion, or other consequential decisions about anyone. No proprietary assessment content or branded types are used.

## Changelog

- v1.0.5 (Nov 22, 2026): COM-F2 reworded in plain language (start a message or conversation).
- v1.0.4 (Nov 22, 2026): answer text no longer starts with a letter, since the card shows its own.
- v1.0.3 (Nov 22, 2026): answers are labeled A to E to match the card letters, with middle choices "Mostly A, with some E", "An equal blend of A and E" and "Mostly E, with some A". Scoring is unchanged (A=1 to E=5).
- v1.0.1 (Nov 22, 2026): the middle option was reworded and reinstalling over an existing install now works.
- v1.0.0 (Nov 22, 2026): first release.
