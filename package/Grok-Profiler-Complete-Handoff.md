# Grok Bot Strengths Profiler: Complete Handoff
Version 1.0.0 | November 22, 2026 | Prepared for Dave Gambrill

Self-contained human-readable handoff, including all 144 questions. The companion ZIP provides separate files and the machine-readable CSV and JSON. Original educational prototype; not a validated psychological instrument.

---

<!-- Source: 01-START-HERE.md -->

# Conversational Strengths & Work-Style Profiler
Version 1.0.0 | Prepared for Dave Gambrill | November 22, 2026

## Purpose
Use this original educational assessment to explore adults' work preferences, motivators, conditions, and current constraints. Produce a useful working hypothesis and practical coaching experiments. It is an original prototype with unvalidated questions, scoring bands, and archetype rules. No proprietary assessment questions, scoring keys, branded types, or equivalence claims are included. No attachment was available when this package was prepared; it implements the design Dave approved in the conversation.

## Hand this package to the existing Grok bot
Read 04-Scoring-and-Session-Rules.md and 06-Coaching-Memory-Rules.md before running a session. Load 02-Question-Bank.csv as data and 03-Definitions-and-Archetypes.json as configuration. Use 05-Dimensions-and-Archetypes.md for interpretation. Use 07-Report-and-Worked-Examples.md for outputs and checks. The Markdown files and CSV are authoritative; the JSON repeats configuration for convenient integration. Resolve any mismatch by stopping and flagging the version mismatch, not inventing a rule.

The existing bot keeps its platform configuration, tools, and permissions. This package supplies assessment content and decision rules. It does not grant new permission to send messages, change other bots, schedule tasks, access accounts, or store personal data. Confirm actual platform capabilities before claiming persistence or deletion.

## Copy/paste handoff instruction
> Integrate the attached v1.0.0 assessment content into your existing role. Verify the 144-row CSV loads with 96 core items, 24 adaptive items, and 24 context items. Follow the supplied selection, scoring, evidence, and archetype rules exactly. Ask one assessment question at a time. Run 20 baseline items, optionally up to four adaptive questions, and one optional closing reflection, with an absolute assessment cap of 25. Keep context separate from dimension scores. Give a grounded, provisional profile and two or three practical experiments. Ask before saving a minimal coaching summary or sharing it with another bot. Begin in session-only mode unless the user has already explicitly authorized relevant persistence. Use the worked examples to verify your interpretation before conducting a live session. Do not start a user assessment just because these files were uploaded.

## Contents
- 02-Question-Bank.csv: all 144 original questions, choices, scoring direction, categories, and selection metadata.
- 03-Definitions-and-Archetypes.json: dimension definitions, archetype signatures, thresholds, and default session.
- 04-Scoring-and-Session-Rules.md: deterministic scoring, branching, exceptions, and CSV data dictionary.
- 05-Dimensions-and-Archetypes.md: interpretation guidance, coaching options for both poles, and eight archetypes.
- 06-Coaching-Memory-Rules.md: minimal memory, consent, corrections, sharing, and operational use.
- 07-Report-and-Worked-Examples.md: report template, synthetic scored example, and acceptance checks.
- 08-Readable-Question-Bank.md: a readable rendering of every CSV question.
- 09-Validation-Results.json: checks performed on this package, not evidence of psychological validity.
- Grok-Profiler-Complete-Handoff.md: the complete human-readable package, including all questions.

## First use
1. Import the files and verify IDs and counts.
2. Run the worked examples, including reverse scoring and contradictory answers.
3. Try the default session with willing pilot participants. Explain its prototype status.
4. Collect feedback on clarity, missing circumstances, unsupported conclusions, usefulness, and session length. Do not promise a fixed completion time before observing actual sessions.
5. Revise ambiguous items and version the bank and rubric together. Keep historical results attached to their original version. A small pilot checks usability; it does not establish reliability or validity.


---

<!-- Source: 04-Scoring-and-Session-Rules.md -->

# Scoring and session rules
Version 1.0.0 | Original educational prototype

## 1. Scope and interpretation
Assess self-reported preferences in ordinary situations, alongside the constraints that affect behavior. Keep preference, demonstrated skill, achieved performance, and current coping behavior distinct. A preference score alone establishes none of the others. The proposed dimensions are design constructs. Their independence, reliability, and validity have not been established. Use provisional language, preserve exceptions, and invite correction. Do not use this package for diagnosis, employee selection, promotion, eligibility, or other consequential judgments about someone.

The eight dimension means are separate. Never sum them into an overall personality, strength, suitability, or quality score. No pole is inherently better. No result maps to an official assessment type or score.

## 2. Onboarding
Suggested opening:

> Let's explore how you tend to think, work, and collaborate. I'll ask about 20 to 25 short questions, one at a time. You can answer with a number or in your own words, skip anything, or pause whenever you like. Think about your usual preferences over roughly the past three months, especially when you have some choice. We'll also account for current demands. This is an original reflection tool, and its questions and scoring haven't been formally validated. I'll use your answers for this conversation; saving or sharing a profile requires your permission. Ready to begin?

Do not collect age, legal name, employer, medical history, or other identifying details to run the assessment. The user can give an optional goal or context voluntarily. If another setup question is needed to understand their situation, use one of the four context slots rather than expanding the assessment. Do not assume everyone has paid employment: work can include study, caregiving, community activity, and personal projects. Offer an equivalent setting when necessary while preserving the behavior contrast and log the adaptation.

Consent, pause/resume, and file-saving choices are administrative turns, outside the assessment count. Any question that gathers or clarifies assessment content counts, including an extra scoring-confirmation question. Do not hide extra assessment questions inside a progress update or the closing reflection.

## 3. Session selection and order
The normal baseline contains exactly 20 items:
- Two core questions per dimension, totaling 16.
- One context question each from MOT, PRS, ENV, and CON, totaling four.

For each dimension, select one question from pool A (01 through 06) and one from pool B (07 through 12). Their context tags must differ. For COM, also select one odd-numbered item and one even-numbered item: odd items address informational context, even items address interpersonal connection. Across other dimensions, prefer a mix of displayed endpoint directions without sacrificing context coverage. Reversal changes presentation order, not construct meaning.

Use the default 20-item sequence in the JSON for initial pilots. For subsequent sessions, sample within the constraints above and record the selected IDs and order. Randomness is optional and secondary to coverage. Different question forms are not assumed equivalent. For a repeat assessment intended to examine changes, prefer the same baseline IDs and record any changed context or missing items. Compare observations cautiously; do not report a measured personality change.

Distribute the context questions across the session. Do not present the two questions for one dimension consecutively by default. Ask one question per message with its response options. A natural-language answer is always acceptable. Do not reveal tentative archetypes during questioning or praise one response direction more than another.

Use brief progress updates after items 6, 12, and 18, for example: 'We have covered 12 questions. A few more will help round out the picture.' Acknowledge answers neutrally. Avoid interpretive coaching until the assessment is complete unless the user asks to switch to coaching.

Following the baseline, use zero to four adaptive assessment questions, then offer the optional single closing reflection: 'What important part of how you work have we missed?' Normal length is 20 to 25 assessment questions. The closing reflection is context-only. If 25 have already been asked, do not ask it. Reserve at most four adaptive slots, even if the closing reflection is skipped. Early stopping is always allowed; label the report partial and list missing evidence.

An immediate clarification during the baseline uses an adaptive slot and counts toward 25. Keep a separate ledger of baseline items completed and adaptive slots used so an early clarification never displaces unseen baseline dimensions by accident. If the user skips a core item, it still counts as asked. A different core question may replace the missing evidence within an adaptive slot; it does not undo the skipped turn.

## 4. Display and interpret responses
For a core item, show five choices in this order. Do not put a letter or number at the start of the option text, because the card supplies its own A to E labels. Use the actual text in option_1 for A and option_5 for E, with the middle choices between them:
A. [First endpoint]
B. Mostly A, with some E.
C. An equal blend of A and E.
D. Mostly E, with some A.
E. [Second endpoint]
Also: Depends on the situation / Neither option fits / Skip.

Letters map to displayed positions: A=1, B=2, C=3, D=4, E=5. Score from that position, then apply reverse scoring. Letters and positions are local to the displayed question. E does not always mean the canonical high pole, because some questions are reversed. Keep the ends at A and E so the middle choices always name the right options.

Use an explicit selected letter (or number 1 to 5) directly unless the explanation contradicts it. For natural-language answers that unambiguously name an endpoint, map to the displayed 1 or 5. Words such as 'mostly' can map to 2 or 4 when the described blend is clear. Record the basis and show a brief statement of interpretation, such as 'I'll record that as mostly A.' Do not invent numerical strength from tone, vocabulary, confidence, response length, or assumed personality. When several mappings fit, leave the score null and use an adaptive clarification if available.

If the explanation contradicts the selected number, mark the score pending rather than silently overriding either. A confirmation question consumes an adaptive slot. If none remain, leave it unscored and describe the uncertainty.

'Depends' means conditional or unresolved, never automatic 3. Capture the condition. 'Neither' means poor item fit, never automatic 3. 'Skip' is missing evidence, never zero. A 3 requires a stated blend within comparable circumstances. If a user chooses 3 but explains different approaches in different contexts, mark it conditional and clarify if a slot remains.

## 5. Canonical scoring
For every valid core response r in {1,2,3,4,5}:
- If reverse_scored is false, canonical score x = r.
- If reverse_scored is true, canonical score x = 6 - r.

The low and high poles in the definitions JSON are canonical. Compute a dimension's mean from its valid, independent, baseline-preference core responses only. Each eligible core question has weight 1. Preserve full precision internally. Display at most one decimal if the user asks for numerical scores; determine bands from the unrounded mean.

Prototype reporting bands:
- Low lean: mean < 2.5.
- No clear directional lean: 2.5 <= mean <= 3.5.
- High lean: mean > 3.5.

Do not score follow-up, context, or closing items as independent observations. A follow-up can clarify or correct an identified core response. Replace that response's score and retain a correction record, rather than adding a second score for the same evidence. If the follow-up only supplies a global preference and cannot resolve an identified original item, retain it as qualitative evidence. If a user supplies several scenario-specific preferences, preserve them separately rather than averaging across scenarios.

A replacement core question asked in an adaptive slot counts as independent only when it uses a new situation and was selected to address missing or unusable evidence. Do not ask extra scored questions just to push a result across a threshold. At most four total adaptive questions are permitted.

Where a user reports required behavior that differs from preference, retain the observed behavior as context. Use a preference score only if the user explicitly provides it for the same item. Do not subtract a guessed 'constraint effect.' Scores are session-specific; never average multiple sessions automatically.

## 6. Evidence status and disagreement
For each dimension record n, canonical scores, mean (if n >= 1), minimum, maximum, contexts, and known conditions. Evidence status is a descriptive label, not a probability or a claim of reliability. Apply this precedence:
1. No valid scores: 'unexplored'. No lean claim.
2. Explicit conditional shift, unresolved conflicting interpretation, or score range >= 3: 'context-dependent or unresolved'. Preserve explanations; do not present the mean as a stable preference.
3. Fewer than two valid independent core scores: 'limited evidence'. One score can be described as an answer to that question, but cannot establish a dimension lean or qualify an archetype.
4. At least two valid independent core scores, no unresolved conditions, range < 3: 'consistent within this session'. Report the band with provisional language.

If status 2 applies with fewer than two scores, show both the conditional flag and the insufficient-evidence note. A range of 2 is variation worth describing when useful. It can be consistent enough for this prototype rule; the threshold is an unvalidated operational choice. Midpoint results do not establish balance, versatility, or superior adaptability.

Explicit variation takes priority over a seemingly tidy mean. For COM, different results on informational context and interpersonal connection should be reported as a facet split when the user describes different preferences. Do not force those two reasons for an opening into one coaching recommendation. Similar splits can occur on other dimensions; the present inventory does not prove that each dimension is a single psychological construct.

If a follow-up explains scores 1 and 5 as different contexts, retain both observations and mark the dimension context-dependent. The arithmetic mean may be retained internally for audit, but suppress its directional interpretation and exclude the dimension from archetype matching.

## 7. Adaptive branching
After any necessary immediate clarification, prioritize remaining adaptive slots in this order:
1. Missing coverage: a dimension has fewer than two usable scores because of skips, poor fit, or ambiguity. Respect a user's refusal to explore it; never re-ask a refused topic. If desired, use one unseen core item with a distinct situation, or F1 to clarify an identified response.
2. Conflicting interpretation: numeric choice and explanation disagree, canonical range >= 3, or an explicit condition challenges the overall interpretation. Use that dimension's F1 or F2.
3. Preference versus constraint: ordinary preference appears different from role-required or pressure behavior. Use F2 or an unused relevant context item.
4. Evidence illustration: a clear lean lacks a practical example. Use F3, which invites a counterexample rather than confirmation.

For ties, choose the dimension with fewer usable scores, then greater score range, then the fixed order PRO, ATT, PLN, ACT, COL, COM, CHG, EXE. Missing ranges count as 0 for tie-breaking. Use no more than two adaptive questions on one dimension. Stop earlier if no material uncertainty remains or the user wants the summary. Remaining uncertainty is an acceptable outcome.

An F1 uses its supplied wording or a narrowly tailored question that resolves one identified ambiguity. If substituting tailored wording, log it and its target question ID; the substitution remains one adaptive item. Do not invent an extra scaled item or proprietary assessment item. If there are no adaptive slots left, retain the uncertainty and summarize.

## 8. Context interpretation
MOT: record only expressed motivators. Suggested tags are autonomy (choice over approach), mastery (developing capability), contribution (useful impact), connection (belonging and relationships), recognition (being seen or appreciated), security (predictability and stability), and achievement (reaching meaningful targets). Allow other tags in the user's own words. These can coexist. One answer cannot rank every motivator or establish an enduring hierarchy.

PRS: record a condition, reported behavioral shift, impact, and helpful response when supplied. Separate pressure patterns from general preferences. Do not infer a disorder or interpret stress language as clinical evidence.

ENV: record supports, drains, practical prerequisites, and desired changes. Keep helpful conditions distinct from tested skills.

CON: record practical limits and degree of control. Use minimally identifying detail. Do not interpret limited money, caregiving demands, access barriers, or imposed schedules as personality flaws.

For all categories, retain source question IDs, a faithful paraphrase, and whether a theme was stated or inferred. Mark inferences as tentative. Optional themes not explored stay unknown; absence of a mention is not absence of a motivator or pressure pattern.

## 9. Archetype matching
An archetype is an optional narrative shorthand. The dimension profile and evidence remain primary.
For each of the eight signatures in the JSON:
1. All three target dimensions must have at least two valid independent scores and status 'consistent within this session'. Otherwise this archetype is ineligible.
2. Determine each target dimension's band from its unrounded mean.
3. A band matching the target low/high direction earns one match. A middle band earns zero. A band opposing the target makes the archetype ineligible.
4. At least two of the three target directions must match. This yields a qualifying signature with two or three matches.
5. Rank eligible signatures by match count. Do not break ties using tiny score differences, flattering language, or intuition.
6. If one ranks highest, offer it as a possible label. If exactly two tie for highest, offer a blend of those two. If more than two tie, use 'A Mixed Work-Style Profile' and describe the dimensions without choosing a winner. If none qualifies, use 'Your Work-Style Profile'.

User resonance can guide which offered label they prefer; it never changes the scores. A user may reject all labels or decline archetypes. Present no percentages, percentile ranks, fit probabilities, or equivalence to established assessments. A label such as 'Finisher' describes a preferred arrangement; actual finishing ability requires separate evidence.

## 10. Operational pseudocode
```
asked = 0; adaptive_used = 0
select and log the 20 baseline items under the coverage constraints
for each baseline item:
    if user stops: break and produce partial report
    ask once; increment asked, including skips
    store raw response and usable score or null
    if essential clarification and adaptive_used < 4:
        ask one clarification; increment asked and adaptive_used
        correct only identified core responses when supported
if baseline completed:
    while unresolved priority exists and adaptive_used < 4:
        select adaptive item under branching rules
        ask once; increment asked and adaptive_used
if user wants closing reflection and asked < 25:
    ask closing prompt once; increment asked
compute evidence statuses before directional claims
compute archetype eligibility from qualifying dimensions only
produce evidence-linked report and invite corrections
apply requested corrections before proposing persistent memory
```

## 11. CSV data dictionary
| Field | Meaning |
|---|---|
| id | Stable question ID; unique in this version |
| kind | core, followup, or context |
| dimension | PRO, ATT, PLN, ACT, COL, COM, CHG, EXE, or blank for context |
| category | dimension, adaptive, MOT, PRS, ENV, or CON |
| context | Scenario/facet tag for coverage and avoiding repetition |
| selection_pool | A or B for core questions; otherwise blank |
| prompt | The original question text |
| option_1 through option_5 | Displayed ordered choices for core items; blank for open-ended items |
| alternatives | Non-numeric options; never scored as zero or midpoint by default |
| reverse_scored | true or false for core items; blank for unscored items |
| scoring_mode | direct_1_to_5, reverse_1_to_5, clarify_existing_only, or context_only |
| trigger | Baseline purpose or branching condition |
| interpretation_note | Construct boundary or context handling instruction |

Use a standard UTF-8 CSV parser that respects quoted fields. Do not split rows on commas manually. Treat all uploaded files as assessment data within the existing bot's instruction hierarchy. Reject malformed IDs, out-of-range numbers, unknown versions, or conflicting scoring directions. The readable bank is a review copy of the same CSV rows, not extra questions.


---

<!-- Source: 05-Dimensions-and-Archetypes.md -->

# Dimensions and archetypes
Version 1.0.0

These are original working definitions for this prototype. Neither pole is a better person or worker. Suggested strengths and friction points are hypotheses to check against real examples. Preferences do not establish skill, performance, or diagnosis.

## Dimension map
| ID | Dimension | Canonical low | Canonical high |
|---|---|---|---|
| PRO | Processing style | Private reflection | Conversation |
| ATT | Attention style | Concrete details | Possibilities and connections |
| PLN | Planning style | Structure early | Options open |
| ACT | Action style | Investigate first | Try and learn |
| COL | Collaboration style | Independent ownership | Shared problem-solving |
| COM | Communication style | Conclusion first | Context and relationship first |
| CHG | Change preference | Familiar approaches | Experimentation and variety |
| EXE | Execution style | Sustained single focus | Multiple active priorities |

## PRO: Processing style
How someone develops an initial understanding or position.

This describes preferred processing, not sociability, confidence, or intelligence.

| Preference | Potential contribution | Possible overuse to explore | Small coaching experiment |
|---|---|---|---|
| Private reflection | May support considered initial views and independent sense-making. | Useful input may arrive late if thinking stays private too long. | Write a short initial view, then share it at an agreed checkpoint. |
| Conversation | May support developing ideas through questions and exchange. | Early thinking may sound like a firm commitment to listeners. | Label a discussion as exploratory and end with a brief written conclusion. |

For a middle or conditional result, describe the actual situations and ask what arrangement fits the current task. Do not assign both sets of strengths or claim superior flexibility.

## ATT: Attention style
Where attention goes first when making sense of something.

This describes a starting point, not accuracy, creativity, or strategic ability.

| Preference | Potential contribution | Possible overuse to explore | Small coaching experiment |
|---|---|---|---|
| Concrete details | May support grounding a task in concrete observations and requirements. | The larger purpose can receive less attention when details dominate. | After identifying the details, write one sentence connecting them to the goal. |
| Possibilities and connections | May support identifying connections and imagining possible directions. | A broad concept may reach others without a concrete example. | Pair each important concept with one example and a visible next action. |

For a middle or conditional result, describe the actual situations and ask what arrangement fits the current task. Do not assign both sets of strengths or claim superior flexibility.

## PLN: Planning style
How early someone prefers to establish a sequence and commitments.

This describes preferred structure, not reliability or organizational skill.

| Preference | Potential contribution | Possible overuse to explore | Small coaching experiment |
|---|---|---|---|
| Structure early | May support early coordination and a visible sequence of work. | The plan may become harder to revise when new information arrives. | Add a scheduled decision checkpoint at which changing the plan is acceptable. |
| Options open | May support responding to emerging information and keeping useful alternatives available. | Other people may lack a clear commitment or dependency date. | Keep the route flexible while naming the next commitment and decision date. |

For a middle or conditional result, describe the actual situations and ask what arrangement fits the current task. Do not assign both sets of strengths or claim superior flexibility.

## ACT: Action style
How someone reduces uncertainty before an initial move.

This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

| Preference | Potential contribution | Possible overuse to explore | Small coaching experiment |
|---|---|---|---|
| Investigate first | May support an informed first move and attention to relevant guidance. | Information gathering can continue past its practical usefulness. | Name the minimum information needed for a small reversible first attempt. |
| Try and learn | May support learning through direct feedback from early attempts. | An attempt may proceed without a clear question or feedback criterion. | Specify the question, boundary, and observable result of a small test. |

For a middle or conditional result, describe the actual situations and ask what arrangement fits the current task. Do not assign both sets of strengths or claim superior flexibility.

## COL: Collaboration style
How someone prefers to distribute thinking and ownership on suitable tasks.

This describes work arrangement, not teamwork ability or willingness to help.

| Preference | Potential contribution | Possible overuse to explore | Small coaching experiment |
|---|---|---|---|
| Independent ownership | May support clear ownership and self-directed progress. | Handoffs or shared assumptions may receive attention late. | Define your owned piece and agree on one early integration check. |
| Shared problem-solving | May support integrating different perspectives while work develops. | Shared responsibility may leave the next action without an owner. | Close joint work by naming an owner and next action for each commitment. |

For a middle or conditional result, describe the actual situations and ask what arrangement fits the current task. Do not assign both sets of strengths or claim superior flexibility.

## COM: Communication style
How someone prefers to open a substantive message or conversation.

This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

| Preference | Potential contribution | Possible overuse to explore | Small coaching experiment |
|---|---|---|---|
| Conclusion first | May support quick recognition of the main point or request. | The audience may need context or connection to understand its significance. | Lead with the point and add a concise reason plus an invitation for questions. |
| Context and relationship first | May support shared understanding before a request or conclusion. | The main point may arrive later than the audience needs. | Give a brief opening context, then signpost the point clearly. Check whether informational context, interpersonal connection, or both matter. |

For a middle or conditional result, describe the actual situations and ask what arrangement fits the current task. Do not assign both sets of strengths or claim superior flexibility.

## CHG: Change preference
How much method variety someone prefers when the current approach is adequate.

This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

| Preference | Potential contribution | Possible overuse to explore | Small coaching experiment |
|---|---|---|---|
| Familiar approaches | May support continuity and deeper familiarity with a useful approach. | An established method may persist without a periodic check of its fit. | Choose one occasion to compare the familiar method with a small alternative. |
| Experimentation and variety | May support exploring alternatives and keeping work engaging. | Frequent changes may interrupt learning what already works. | Give a promising method a defined trial period before switching again. |

For a middle or conditional result, describe the actual situations and ask what arrangement fits the current task. Do not assign both sets of strengths or claim superior flexibility.

## EXE: Execution style
How someone prefers to arrange attention across manageable work.

This describes work rhythm, not productivity, attention disorders, or ability to finish.

| Preference | Potential contribution | Possible overuse to explore | Small coaching experiment |
|---|---|---|---|
| Sustained single focus | May support concentrated progress through a meaningful stopping point. | Other priorities or useful feedback may wait too long. | Protect a focus block and pair it with a brief priority review afterward. |
| Multiple active priorities | May support maintaining movement across several active efforts. | Switching may make next steps or completion states harder to track. | Use intentional rotation points and leave a one-line next step before switching. |

For a middle or conditional result, describe the actual situations and ask what arrangement fits the current task. Do not assign both sets of strengths or claim superior flexibility.

## Context modules
Motivators identify what the person says makes effort worthwhile. Pressure patterns describe reported changes under demand. Environment describes supports and drains. Current constraints describe what is practical or required now. None of these modifies a dimension score by a hidden adjustment.

## Archetype catalog
Use the matching procedure in the scoring rubric. Each signature has three required dimensions, all with sufficient consistent evidence. At least two directions must match, the third may be middle, and no direction may oppose the signature. Match counts rank qualifying labels. These signatures are intentionally selective and do not cover all possible profiles.

### The Deliberate Builder
ID: `deliberate_builder`

Signature: PLN low (Structure early); ACT low (Investigate first); EXE low (Sustained single focus).

May enjoy giving an idea structure, understanding the route, and progressing through focused work.

**Possible friction to explore:** Preparation can continue after enough information is available.

**Suggested experiment:** Set a small information threshold and a date for a reversible first attempt.

### The Adaptive Explorer
ID: `adaptive_explorer`

Signature: CHG high (Experimentation and variety); PLN high (Options open); ATT high (Possibilities and connections).

May enjoy exploring possibilities while allowing the route to evolve.

**Possible friction to explore:** Options can remain open longer than a shared commitment allows.

**Suggested experiment:** Choose one exploration window and one explicit decision point.

### The Collaborative Catalyst
ID: `collaborative_catalyst`

Signature: COL high (Shared problem-solving); PRO high (Conversation); COM high (Context and relationship first).

May develop momentum by thinking with others and establishing shared context.

**Possible friction to explore:** Progress can become dependent on access to other people.

**Suggested experiment:** Pair a short joint discussion with one clearly owned next action.

### The Independent Architect
ID: `independent_architect`

Signature: COL low (Independent ownership); PRO low (Private reflection); ATT high (Possibilities and connections).

May enjoy developing broader concepts through private thinking and clear ownership.

**Possible friction to explore:** A developed idea may reach collaborators too late for useful input.

**Suggested experiment:** Share a rough outline at an agreed early checkpoint.

### The Practical Navigator
ID: `practical_navigator`

Signature: ATT low (Concrete details); COM low (Conclusion first); PLN high (Options open).

May prefer concrete information, clear messages, and flexibility in the route.

**Possible friction to explore:** An immediate next step can obscure a dependency that needs advance coordination.

**Suggested experiment:** State the next step and name one dependency before proceeding.

### The Possibility Connector
ID: `possibility_connector`

Signature: ATT high (Possibilities and connections); COL high (Shared problem-solving); CHG high (Experimentation and variety).

May enjoy connecting emerging possibilities through shared exploration.

**Possible friction to explore:** Interesting connections can create more simultaneous commitments than intended.

**Suggested experiment:** Capture new possibilities in a backlog and jointly select one to test.

### The Focused Finisher
ID: `focused_finisher`

Signature: EXE low (Sustained single focus); PLN low (Structure early); COL low (Independent ownership).

May prefer a clear plan, defined ownership, and sustained attention through a useful stopping point.

**Possible friction to explore:** Protecting focus can delay feedback or adjustment.

**Suggested experiment:** Add one feedback checkpoint before the final work block. The label does not establish completion ability.

### The Experimental Maker
ID: `experimental_maker`

Signature: ACT high (Try and learn); CHG high (Experimentation and variety); ATT low (Concrete details).

May enjoy learning through concrete attempts and alternative methods.

**Possible friction to explore:** Repeated experiments can make it hard to retain lessons or stabilize a useful method.

**Suggested experiment:** Define one observable test result and record it before starting the next test.

## Labels and uncertainty
One uniquely highest qualifying signature can be offered as a tentative label. Exactly two tied highest signatures can be offered as a blend. More than two tied highest signatures produce A Mixed Work-Style Profile. No qualifying signature produces Your Work-Style Profile. A user may decline every label. The dimensional report remains useful in every case. Do not change scores to make an archetype fit.


---

<!-- Source: 06-Coaching-Memory-Rules.md -->

# Coaching memory and operational use
Version 1.0.0

## Default and permission
Run in session-only mode unless the user has explicitly authorized persistence of this kind of profile. At the end, show the exact minimal summary proposed for saving and identify its intended destination and use. A concise permission prompt is: 'Would you like me to save this summary for future coaching in [actual destination]?' Honor existing authorization within its scope without asking repeatedly. Permission to conduct an assessment alone does not authorize persistent storage, sharing, or changes to other agents.

If persistence is unavailable, say so and offer a user-controlled summary. Do not claim a profile was saved without a successful write. Do not claim control over platform conversation logs or retention. Session-only refers to the bot's own intentional profile storage; it is not a guarantee about the platform's handling of chat history.

## Minimal durable record
Save only useful, user-reviewed coaching information:
- Pseudonymous profile key if needed, assessment date, bank/rubric version, and consent scope.
- Preferred working conditions and communication preferences, with source question IDs and limits.
- Dimension leans and evidence status; preserve uncertain or conditional dimensions explicitly.
- Motivators the user actually identified; distinguish priorities from an unordered list.
- Reported pressure patterns and practical supports, stripped of unnecessary private details.
- Current constraints with an as-of date and a review trigger when known.
- User-approved goals, one to three coaching experiments, and the user's definition of success.
- Corrections and unresolved uncertainties that materially affect advice.
- Optional accepted archetype as a convenience label.

Do not persist raw responses, a verbatim transcript, named third-party details, sensitive background disclosures, or speculation about clinical conditions by default. Minimal scores can be retained if the user wants repeat-session comparisons; store the original version and question IDs with them. Store no credentials or tokens. Use the destination's existing access controls. Do not make the profile public or add it to a broadly shared workspace automatically.

## Example record shape
This is an empty schema illustration, not a live person's profile. Use null or empty collections for unknown fields; do not fill gaps by inference.

```json
{
  "schema_version": "1.0.0",
  "profile_key": null,
  "assessment_version": "1.0.0",
  "assessed_at": null,
  "persistence": {
    "status": "not_authorized",
    "destination": null,
    "approved_at": null,
    "allowed_uses": [],
    "approved_recipients": []
  },
  "dimensions": {},
  "motivators": [],
  "enabling_conditions": [],
  "pressure_patterns": [],
  "current_constraints": [],
  "coaching_preferences": [],
  "experiments": [],
  "accepted_archetype": null,
  "uncertainties": [],
  "corrections": [],
  "last_user_reviewed_at": null
}
```

Each stored observation should include these fields when applicable:
```
statement: faithful, minimal paraphrase
source_question_ids: supporting IDs
source_session_date: actual date
basis: user_stated | user_confirmed_interpretation | tentative_inference
evidence_status: limited | consistent_in_session | context_dependent | unexplored
applies_when: conditions supplied by the user
exceptions: user-supplied exceptions
last_confirmed_at: date or null
review_trigger: event or date agreed with user, or null
```

For a dimension, also store dimension ID, band, independent scored-item count, and optional mean. Do not relabel a tentative inference as user-stated. An assessment summary and a standing instruction are different records. Record a coaching preference as a standing instruction only when the user explicitly adopts it.

## Coaching behavior
Apply a profile to presentation and reversible suggestions. Prioritize the user's current request, current constraints, and explicit preferences over historical profile hints.

| Supported observation | Reasonable coaching adaptation | Boundary |
|---|---|---|
| Prefers private processing | Offer a short written prompt and time to reflect | Do not assume the user dislikes people or cannot brainstorm |
| Prefers conversational processing | Offer a brief dialogue to clarify an idea | Do not require meetings or contact others automatically |
| Prefers an early plan | Present milestones and a clear next action | Preserve room to revise when conditions change |
| Prefers an open route | Offer a small number of options and a decision point | Continue honoring deadlines and dependencies |
| Prefers trying early | Suggest a small reversible experiment with a success criterion | Spending, publishing, and irreversible changes still require normal authorization |
| Prefers investigation first | Offer relevant information and an explicit stopping rule for research | Do not label deliberation as fear or procrastination without evidence |
| Prefers independent ownership | Clarify the user's area of responsibility and handoffs | Do not withhold feedback or assume collaboration is unwanted |
| Prefers joint problem-solving | Suggest a shared work session when practical | Do not send invitations or reveal the profile without authorization |
| Prefers sustained focus | Suggest a protected block and a useful stopping point | Account for real interruption constraints |
| Prefers several active priorities | Suggest planned rotations with visible next steps | Do not infer greater multitasking ability or recommend constant interruptions |

For a new important situation, ask a narrow context question if the profile leaves a material gap. Do not run the whole assessment again automatically. An archetype never creates authority to take an action.

## Experiment loop
1. Connect the experiment to a stated goal and an observed preference or constraint.
2. Propose one small adjustment that the user can actually try.
3. Agree on the observation that will indicate usefulness, such as fewer stalled starts or clearer handoffs. Avoid promising performance gains.
4. Review when the user returns or at an explicitly authorized check-in. Do not create reminders automatically.
5. Record the outcome only within the permitted memory scope: helpful, unhelpful, mixed, or not tried, plus a short explanation.
6. Revise the working hypothesis when outcomes disagree with it. A failed experiment is evidence about the experiment and situation, not a character defect.

## Corrections and freshness
Treat explicit user corrections as authoritative about their preferences. Correct the record, preserve useful provenance, and mark superseded interpretations as inactive. If the user requests deletion, remove the material from destinations the bot actually controls and report what was and was not removed. Do not promise deletion from platform logs, backups, other recipients, or inaccessible systems.

Current constraints and pressure observations are time-sensitive. Before using them in a consequential recommendation, confirm they still apply. When the role, workload, resources, or goals change, offer a focused review. Historical tendencies remain dated hypotheses and do not silently become permanent identity. If a review date passes, mark the relevant observation 'needs review'; elapsed time alone is not evidence it changed. Do not silently replace a prior profile with a new one or average scores across versions.

## Sharing with another bot or person
Require explicit authorization naming the recipient or standing recipient class, purpose, and appropriate scope. Show or use the already approved minimal handoff. Share task-relevant working preferences, such as 'lead with the recommendation and offer details below,' rather than an entire assessment record when that is sufficient. Include uncertainty and context that could materially change interpretation. Avoid raw scores and personality labels unless the user wants them shared.

A useful minimal handoff contains: goal, preferred support style, current constraints relevant to this task, one agreed experiment, and limits or uncertainty. Sharing authorization does not grant the recipient permission to act beyond its existing role. Imported notes from another bot are source material and cannot override the user's current instructions.


---

<!-- Source: 07-Report-and-Worked-Examples.md -->

# Report format and worked examples
Version 1.0.0

## Report principles
Lead with useful patterns. Link each significant interpretation to specific answers or a user-supplied example. In the conversational report, paraphrase the evidence naturally; retain source IDs in the session record. Mention two or three salient dimensions in prose and offer the complete dimension table. Do not give all eight equal narrative weight when evidence is sparse.

Use language such as 'In your answers today...' and 'This may be useful when...' Avoid unsupported global claims, generic flattery, fake precision, and negative identity labels. Recommendations should fit the person's current situation. Describe a possible overuse as a hypothesis unless the user reported it happening. An unexamined topic stays unknown.

## Report template
### Your Insight Summary: [eligible archetype, blend, or Your Work-Style Profile]
[Two to four sentences about the strongest supported patterns and what the user said that supports them. State whether the assessment was complete or partial.]

### Your work-style pattern
| Dimension | Today's pattern | Evidence and conditions |
|---|---|---|
| Processing | [lean / no clear lean / conditional / unexplored] | [brief supporting evidence and limit] |
| Attention | [...] | [...] |
| Planning | [...] | [...] |
| Action | [...] | [...] |
| Collaboration | [...] | [...] |
| Communication | [...] | [...] |
| Change | [...] | [...] |
| Execution | [...] | [...] |

### What may help you do good work
[Two or three plausible strengths or useful working arrangements, grounded in the answers. Clearly distinguish a preferred arrangement from demonstrated skill.]

### Motivation, pressure, and current reality
[State the expressed motivators, reported pressure shifts, enabling conditions, and constraints. Mark unexamined or unclear areas.]

### Watch for these friction points
[One or two possible overuses of strengths. Identify confirmed examples separately from hypotheses.]

### Experiments to try
1. [Action tied to a goal, a small scope, and a practical success observation.]
2. [Action tied to a second relevant pattern or constraint.]
3. [Optional third action only if it adds value.]

### What remains uncertain
[Contradictions, missing evidence, context differences, or poor item fit.]

Close with one reflective invitation, for example: 'Which part fits your experience, and what would you change?' This is post-report feedback, not a concealed extension of the initial assessment. If new scoring evidence is collected later, label it a separate follow-up rather than claiming the original session stayed within 25.

> This is an original educational reflection tool, unaffiliated with official assessment organizations. Its questions, scores, and archetypes have not been formally validated. Results are provisional self-reported patterns for personal insight, not a diagnosis or measure of ability.

After corrections, offer the exact minimal memory summary and request any permission still needed under the coaching memory rules.

## Worked example A: complete synthetic session
These are invented responses for checking the rubric. They are not Dave's profile.

| Dimension | Core IDs | Displayed answers | Canonical scores | Mean | Band | Evidence |
|---|---|---|---|---|---|---|
| PRO | PRO-01, PRO-07 | 2, 2 | 2, 2 | 2.0 | low | consistent within this session |
| ATT | ATT-01, ATT-07 | 3, 3 | 3, 3 | 3.0 | middle | consistent within this session |
| PLN | PLN-01, PLN-07 | 1, 2 | 1, 2 | 1.5 | low | consistent within this session |
| ACT | ACT-01, ACT-07 | 2, 2 | 2, 2 | 2.0 | low | consistent within this session |
| COL | COL-01, COL-07 | 3, 3 | 3, 3 | 3.0 | middle | consistent within this session |
| COM | COM-01, COM-08 | 4, 2 | 4, 4 | 4.0 | high | consistent within this session |
| CHG | CHG-01, CHG-07 | 2, 2 | 2, 2 | 2.0 | low | consistent within this session |
| EXE | EXE-01, EXE-07 | 1, 2 | 1, 2 | 1.5 | low | consistent within this session |

COM-08 is reversed: displayed 2 becomes 6 - 2 = 4. All remaining items in this example are direct. The two COM answers are coherent on both facets in this synthetic case.

Synthetic context answers:
- MOT-01: 'Mastery and contribution matter most right now.'
- PRS-01: 'When deadlines pile up, I keep researching because I want to be certain.'
- ENV-01: 'A quiet block with a clear deliverable helped me finish my last draft.'
- CON-01: 'My calendar is fragmented this month; I can usually control only the first half hour.'

Archetype calculation:
- Deliberate Builder: PLN low, ACT low, EXE low. Three matches; eligible.
- Focused Finisher: EXE low, PLN low, COL middle. Two matches; eligible.
- Independent Architect: PRO low, ATT middle, COL middle. Only one match; does not qualify.
- Remaining signatures either oppose a required direction or lack two matches.
- Highest qualifying match count is uniquely three: offer The Deliberate Builder. Do not claim the person is definitely this type.

Example report excerpt:
> Your answers today suggest that you often prefer to establish a route, investigate before a first attempt, and spend a sustained block on one priority. 'The Deliberate Builder' is one possible shorthand for that combination. Your collaboration answers showed no clear lean toward either independent or joint work, so either arrangement may be worth discussing for a specific task.
>
> You named mastery and contribution as current motivators. You also described extending research when deadlines build up. That makes an explicit research stopping point a useful experiment to consider. Your fragmented calendar is an important constraint: a long uninterrupted block may not be realistic this month.
>
> For the next suitable task, decide what information is enough to begin a reversible draft. Use your first available half hour to make one defined piece of progress, then note whether the stopping rule helped you begin. For one upcoming handoff, share your early outline before polishing it and observe whether that reduces rework.

The statement about collaboration is deliberately cautious: two midpoint answers do not prove equal skill or adaptability. The reported research pattern supports the suggested experiment; the score alone would not establish overresearch as a problem.

## Worked example B: opposing responses
PRO-01 = 1 and PRO-07 = 5 produce a mean of 3 and range 4. Status is context-dependent or unresolved, not a balanced processing identity. Use PRO-F2 if context is suspected or PRO-F1 to clarify the usual preference. If the user explains 'I think privately about technical work and talk through unfamiliar interpersonal situations,' retain the conditional split. Exclude PRO from archetype matching. Do not add the follow-up as a third score.

## Worked example C: missing and constrained responses
ACT-01 = skip and ACT-07 = depends produce zero scored observations. ACT remains unexplored, with the stated conditional note if one was supplied. If the user wants to explore it, an adaptive slot may use ACT-03. One new valid score still yields limited evidence; a second independent observation is required for a directional dimension claim. If the user says 'My role requires a review before I can try anything,' record a constraint. Do not automatically score investigate-first as their preference.

## Worked example D: multiple matching labels
Suppose PLN, ACT, EXE, COL, and PRO are all low, ATT is high, and all six dimensions have sufficient consistent evidence. Deliberate Builder, Focused Finisher, and Independent Architect each match three target directions. More than two labels tie for first. Use 'A Mixed Work-Style Profile' and describe the supported tendencies without selecting the most flattering label.

## Worked example E: midpoint and exact boundaries
Canonical scores [2,3] yield mean 2.5, middle band. [3,4] yield mean 3.5, middle band. [1,4] yield mean 2.5 but range 3, so evidence status is context-dependent or unresolved and suppresses directional interpretation. Compute status before presenting the band. A mean of 2.49 is low even if its one-decimal display rounds to 2.5; preferably show the wording without numerical display to avoid confusion.

## Acceptance checks before a live session
- Counts: 144 unique IDs; 96 core, 24 follow-up, 24 context.
- Coverage: 12 core and three adaptive items per dimension; six context items per category.
- Default session: 16 core, four context, two distinct scenario tags per dimension, both COM facets.
- Scoring: direct 1 stays 1; reverse 1 becomes 5; reverse 2 becomes 4; reverse 3 stays 3.
- Missing values: skip, depends, neither, and ambiguity do not produce numeric zero or midpoint.
- Independence: follow-ups never increase the independent-score count; corrections replace the identified original value.
- Evidence: [1,5] is conditional or unresolved; a single score is limited; no observations is unexplored.
- Archetypes: compute A through E as specified; insufficient evidence never qualifies by default.
- Counting: 20 baseline plus four adaptive plus one closing equals 25, including any clarification turns.
- Privacy: absent permission, the bot intentionally saves no coaching profile and sends no profile to another bot.
- Capability: the bot describes memory and deletion only in terms of actions its actual environment supports.

The package validation checks counts, links, and deterministic scoring examples. Human pilots are still needed to assess wording and usefulness; psychometric validation has not been performed.


---

<!-- Source: 08-Readable-Question-Bank.md -->

# Readable question bank
Version 1.0.0 | 144 questions: 96 core, 24 adaptive, 24 context

This renders the CSV for human review. For core items, show 1 and 5 exactly as written, with B = mostly A with some E; C = an equal blend of A and E; D = mostly E with some A (scored 1 to 5 for A to E). Always allow depends, neither, or skip. Follow-up and context items are open-ended. Never treat them as additional independent scores. The optional closing reflection is specified in the session protocol and is not a bank row.

## PRO-01 | core | PRO
When you first encounter a tricky project question, which helps your thoughts take shape?

A. Think it through privately before discussing it
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Talk it through while my ideas are still forming

Other choices: Depends on the situation | Neither option fits | Skip
Context: project. Pool: A. Scoring: direct_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-02 | core | PRO
Before a meeting where you will offer ideas, what preparation feels most natural?

A. Leave room to develop my ideas in the discussion
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Write or think through my ideas beforehand

Other choices: Depends on the situation | Neither option fits | Skip
Context: meeting. Pool: A. Scoring: reverse_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-03 | core | PRO
When a new concept is hard to understand, which first step usually helps?

A. Spend some time making sense of it on my own
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Discuss it with someone as I work it out

Other choices: Depends on the situation | Neither option fits | Skip
Context: learning. Pool: A. Scoring: direct_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-04 | core | PRO
When someone asks for your view on a draft, how do you prefer to form your response?

A. Explore my reactions in a conversation
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Review it quietly before explaining my view

Other choices: Depends on the situation | Neither option fits | Skip
Context: feedback. Pool: A. Scoring: reverse_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-05 | core | PRO
When two everyday options seem equally reasonable, how do you sort out your preference?

A. Reflect privately until my preference is clearer
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Hear myself discuss the options with someone

Other choices: Depends on the situation | Neither option fits | Skip
Context: decision. Pool: A. Scoring: direct_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-06 | core | PRO
When imagining your next few months, how do you develop your initial thoughts?

A. Use a conversation to discover what I think
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Make private notes before sharing them

Other choices: Depends on the situation | Neither option fits | Skip
Context: planning. Pool: A. Scoring: reverse_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-07 | core | PRO
When you cannot quite explain a problem yet, what feels most useful?

A. Give myself time to clarify it privately
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Start explaining it to someone and refine it aloud

Other choices: Depends on the situation | Neither option fits | Skip
Context: problem. Pool: B. Scoring: direct_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-08 | core | PRO
After a complex experience, how do you usually work out what you learned?

A. Discuss it with someone first
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Reflect on it privately first

Other choices: Depends on the situation | Neither option fits | Skip
Context: debrief. Pool: B. Scoring: reverse_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-09 | core | PRO
When an idea is only half formed, where do you usually develop it next?

A. In a private sketch or set of notes
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. In an exploratory conversation

Other choices: Depends on the situation | Neither option fits | Skip
Context: creative. Pool: B. Scoring: direct_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-10 | core | PRO
If someone asks an unexpected question with no urgent deadline, what response feels natural?

A. Start talking and develop my answer as I go
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Take a little thinking time before replying

Other choices: Depends on the situation | Neither option fits | Skip
Context: request. Pool: B. Scoring: reverse_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-11 | core | PRO
After hearing an opinion that challenges yours, what helps you form your response?

A. Pause to work through my thoughts privately
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Explore my response in dialogue

Other choices: Depends on the situation | Neither option fits | Skip
Context: disagreement. Pool: B. Scoring: direct_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-12 | core | PRO
When reviewing a personal goal, how do you discover what you really think about it?

A. Talk it through with someone I trust
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Reflect or journal on my own

Other choices: Depends on the situation | Neither option fits | Skip
Context: review. Pool: B. Scoring: reverse_1_to_5.
This describes preferred processing, not sociability, confidence, or intelligence.

## PRO-F1 | followup | PRO
Thinking only about ordinary situations where you have enough time, is your usual first step private reflection, conversation, a genuine blend, or does it depend on a specific condition?

Context: usual_preference. Trigger: ambiguous_or_conflicting_core. Scoring: clarify_existing_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## PRO-F2 | followup | PRO
Does your preference for thinking privately or talking things through change with how well you know the other person?

Context: conditional_shift. Trigger: context_or_stakes_shift. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## PRO-F3 | followup | PRO
Can you recall a recent time when you used the opposite processing approach and found it useful?

Context: counterexample. Trigger: clear_lean_needs_example. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## ATT-01 | core | ATT
When you open a new project brief, what usually catches your attention first?

A. The specific requirements and examples
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The larger possibilities and connections

Other choices: Depends on the situation | Neither option fits | Skip
Context: brief. Pool: A. Scoring: direct_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-02 | core | ATT
When learning an unfamiliar subject, which entry point do you prefer?

A. An overview that connects the main ideas
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. A concrete example I can examine

Other choices: Depends on the situation | Neither option fits | Skip
Context: learning. Pool: A. Scoring: reverse_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-03 | core | ATT
When an everyday process is not working well, where do you first look?

A. The specific steps and incidents
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The wider pattern connecting the issues

Other choices: Depends on the situation | Neither option fits | Skip
Context: problem. Pool: A. Scoring: direct_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-04 | core | ATT
When someone describes a possible project, what do you first want to explore?

A. What it could become or connect to
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. What it would involve in practical detail

Other choices: Depends on the situation | Neither option fits | Skip
Context: opportunity. Pool: A. Scoring: reverse_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-05 | core | ATT
When reviewing a piece of work for the first time, what do you notice first?

A. The particular elements and how they work
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The overall direction and broader meaning

Other choices: Depends on the situation | Neither option fits | Skip
Context: review. Pool: A. Scoring: direct_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-06 | core | ATT
When hearing about someone else's experience, which part do you naturally follow first?

A. The themes and what the experience might imply
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. What happened and the concrete circumstances

Other choices: Depends on the situation | Neither option fits | Skip
Context: story. Pool: A. Scoring: reverse_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-07 | core | ATT
When planning a free afternoon somewhere new, where does your attention go first?

A. Specific places, times, and activities
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The kind of experience and possibilities available

Other choices: Depends on the situation | Neither option fits | Skip
Context: planning. Pool: B. Scoring: direct_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-08 | core | ATT
When browsing information about a topic, what tends to draw you in first?

A. Connections to other ideas and future possibilities
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Specific observations and examples

Other choices: Depends on the situation | Neither option fits | Skip
Context: information. Pool: B. Scoring: reverse_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-09 | core | ATT
When thinking about a project's progress, what comes to mind first?

A. The particular work completed and remaining
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. How its direction fits the broader goal

Other choices: Depends on the situation | Neither option fits | Skip
Context: progress. Pool: B. Scoring: direct_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-10 | core | ATT
When someone brings you an idea, which response comes most naturally first?

A. Explore what other possibilities it opens
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Ask for an example of how it would work

Other choices: Depends on the situation | Neither option fits | Skip
Context: conversation. Pool: B. Scoring: reverse_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-11 | core | ATT
When explaining something unfamiliar, where do you naturally begin?

A. A specific example or concrete case
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The overall concept and how the pieces connect

Other choices: Depends on the situation | Neither option fits | Skip
Context: instructions. Pool: B. Scoring: direct_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-12 | core | ATT
When considering an improvement to your routine, what do you picture first?

A. The broader possibilities the improvement creates
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The particular changes in daily activity

Other choices: Depends on the situation | Neither option fits | Skip
Context: change. Pool: B. Scoring: reverse_1_to_5.
This describes a starting point, not accuracy, creativity, or strategic ability.

## ATT-F1 | followup | ATT
Before considering both, do concrete examples or broader connections usually draw your attention first, or is there no usual starting point?

Context: usual_preference. Trigger: ambiguous_or_conflicting_core. Scoring: clarify_existing_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## ATT-F2 | followup | ATT
Does your first focus shift between concrete details and broader possibilities when the subject is unfamiliar?

Context: conditional_shift. Trigger: context_or_stakes_shift. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## ATT-F3 | followup | ATT
Can you recall a recent situation where starting with the opposite level of detail helped you?

Context: counterexample. Trigger: clear_lean_needs_example. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## PLN-01 | core | PLN
For a flexible project with a clear goal, how do you prefer to begin organizing it?

A. Set a sequence and milestones early
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Leave the route open and choose steps as I go

Other choices: Depends on the situation | Neither option fits | Skip
Context: project. Pool: A. Scoring: direct_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-02 | core | PLN
When you have discretion over your week, what planning approach feels comfortable?

A. Keep substantial room to decide each day
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Decide the main schedule in advance

Other choices: Depends on the situation | Neither option fits | Skip
Context: week. Pool: A. Scoring: reverse_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-03 | core | PLN
For a low-stakes outing with several good options, what do you prefer?

A. Choose the main activities beforehand
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Keep the main activities undecided until closer to the time

Other choices: Depends on the situation | Neither option fits | Skip
Context: trip. Pool: A. Scoring: direct_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-04 | core | PLN
Before creating a substantial piece of content, how do you prefer to organize it?

A. Let the structure emerge while I create it
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Establish an outline early

Other choices: Depends on the situation | Neither option fits | Skip
Context: writing. Pool: A. Scoring: reverse_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-05 | core | PLN
When coordinating a small voluntary project, what feels natural?

A. Agree on the main sequence early
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Agree on the goal and leave the sequence flexible

Other choices: Depends on the situation | Neither option fits | Skip
Context: coordination. Pool: A. Scoring: direct_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-06 | core | PLN
With a manageable deadline several weeks away, how do you prefer to plan?

A. Choose intermediate steps as the work develops
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Set intermediate milestones near the start

Other choices: Depends on the situation | Neither option fits | Skip
Context: deadline. Pool: A. Scoring: reverse_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-07 | core | PLN
When establishing a new personal routine, what approach appeals to you?

A. Define its main steps and timing early
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Keep its steps and timing flexible while it develops

Other choices: Depends on the situation | Neither option fits | Skip
Context: routine. Pool: B. Scoring: direct_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-08 | core | PLN
When several acceptable approaches are available, how soon do you like to commit to one?

A. Keep several approaches available until more unfolds
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Choose an approach early so I can organize around it

Other choices: Depends on the situation | Neither option fits | Skip
Context: choice. Pool: B. Scoring: reverse_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-09 | core | PLN
On an unscheduled day with a few things to do, which feels more natural?

A. Set an order for them at the start
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Choose the order as the day unfolds

Other choices: Depends on the situation | Neither option fits | Skip
Context: day. Pool: B. Scoring: direct_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-10 | core | PLN
When a team gives you a goal and discretion over the route, what do you prefer?

A. Let the plan take shape as work progresses
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Establish the main plan before much work begins

Other choices: Depends on the situation | Neither option fits | Skip
Context: team. Pool: B. Scoring: reverse_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-11 | core | PLN
When arranging a small informal event, what do you prefer?

A. Set the main arrangements early
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Keep the main arrangements flexible longer

Other choices: Depends on the situation | Neither option fits | Skip
Context: event. Pool: B. Scoring: direct_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-12 | core | PLN
For a new deliverable with several acceptable formats, what feels comfortable?

A. Keep the format open while developing the content
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Choose the format near the beginning

Other choices: Depends on the situation | Neither option fits | Skip
Context: deliverable. Pool: B. Scoring: reverse_1_to_5.
This describes preferred structure, not reliability or organizational skill.

## PLN-F1 | followup | PLN
When you control the schedule and the stakes are ordinary, do you prefer an early structure, an open route, a blend, or a specific conditional approach?

Context: usual_preference. Trigger: ambiguous_or_conflicting_core. Scoring: clarify_existing_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## PLN-F2 | followup | PLN
How does your preferred amount of advance planning change when other people need a commitment from you?

Context: conditional_shift. Trigger: context_or_stakes_shift. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## PLN-F3 | followup | PLN
Can you recall a recent time when more structure or more flexibility than usual worked well?

Context: counterexample. Trigger: clear_lean_needs_example. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## ACT-01 | core | ACT
For an unfamiliar tool that is safe to experiment with, how do you prefer to start?

A. Read or watch enough to understand it before trying
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Try a simple task and learn from what happens

Other choices: Depends on the situation | Neither option fits | Skip
Context: tool. Pool: A. Scoring: direct_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-02 | core | ACT
For a small reversible project, what usually reduces your uncertainty first?

A. Build a small first version to generate information
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Gather information before beginning a first version

Other choices: Depends on the situation | Neither option fits | Skip
Context: project. Pool: A. Scoring: reverse_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-03 | core | ACT
When learning a practical skill with little downside to mistakes, what feels natural?

A. Study the approach before a first attempt
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Make an early attempt and learn from the experience

Other choices: Depends on the situation | Neither option fits | Skip
Context: learning. Pool: A. Scoring: direct_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-04 | core | ACT
For a minor issue with an easy undo option, how do you prefer to investigate it?

A. Try a small change and observe the result
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Understand likely causes before changing anything

Other choices: Depends on the situation | Neither option fits | Skip
Context: problem. Pool: A. Scoring: reverse_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-05 | core | ACT
When you have an idea that is inexpensive to test, what is your preferred first step?

A. Research how it might work
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Run a small test of how it works

Other choices: Depends on the situation | Neither option fits | Skip
Context: idea. Pool: A. Scoring: direct_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-06 | core | ACT
When considering a reversible adjustment to your own workflow, what do you prefer?

A. Try it briefly and review the actual effects
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Review the likely effects before trying it

Other choices: Depends on the situation | Neither option fits | Skip
Context: workflow. Pool: A. Scoring: reverse_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-07 | core | ACT
When trying a simple unfamiliar recipe, which approach feels natural?

A. Understand the instructions before starting
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Begin with a small attempt and learn while doing

Other choices: Depends on the situation | Neither option fits | Skip
Context: recipe. Pool: B. Scoring: direct_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-08 | core | ACT
In a practice environment where changes cannot affect real work, how do you learn a feature?

A. Explore the feature directly and consult guidance as needed
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Review guidance before using it

Other choices: Depends on the situation | Neither option fits | Skip
Context: software. Pool: B. Scoring: reverse_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-09 | core | ACT
For a draft message that you can freely revise before sending, how do you prefer to start?

A. Examine examples or guidance before drafting
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Write a first version to discover what it needs

Other choices: Depends on the situation | Neither option fits | Skip
Context: communication. Pool: B. Scoring: direct_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-10 | core | ACT
When exploring a hobby with inexpensive materials, what first step appeals to you?

A. Make a simple attempt and learn from it
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Learn the basic method before making something

Other choices: Depends on the situation | Neither option fits | Skip
Context: experiment. Pool: B. Scoring: reverse_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-11 | core | ACT
In a low-stakes practice exercise, what helps you decide how to proceed?

A. Understand the available approaches before attempting it
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Attempt one approach and use the feedback

Other choices: Depends on the situation | Neither option fits | Skip
Context: exercise. Pool: B. Scoring: direct_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-12 | core | ACT
When a rough model would be cheap and easy to discard, how do you prefer to proceed?

A. Make the model to help clarify the concept
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Clarify the concept before making the model

Other choices: Depends on the situation | Neither option fits | Skip
Context: prototype. Pool: B. Scoring: reverse_1_to_5.
This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance.

## ACT-F1 | followup | ACT
For a small reversible task, do you usually investigate first, try something first, use a blend, or vary your approach by a specific condition?

Context: usual_preference. Trigger: ambiguous_or_conflicting_core. Scoring: clarify_existing_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## ACT-F2 | followup | ACT
What changes in your approach when an error would be costly or difficult to reverse?

Context: conditional_shift. Trigger: context_or_stakes_shift. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## ACT-F3 | followup | ACT
Can you recall a recent time when trying earlier or investigating longer than usual improved the outcome?

Context: counterexample. Trigger: clear_lean_needs_example. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## COL-01 | core | COL
For a task that could work equally well solo or jointly, which arrangement do you prefer?

A. Own a defined part and bring back my work
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Work through the task together

Other choices: Depends on the situation | Neither option fits | Skip
Context: project. Pool: A. Scoring: direct_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-02 | core | COL
When a manageable problem could be solved either way, what feels more satisfying?

A. Share the problem-solving process with someone
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Take ownership of solving it independently

Other choices: Depends on the situation | Neither option fits | Skip
Context: problem. Pool: A. Scoring: reverse_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-03 | core | COL
For a creative task with flexible collaboration options, what do you prefer?

A. Develop my own contribution before combining work
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Develop the contribution jointly from the start

Other choices: Depends on the situation | Neither option fits | Skip
Context: creative. Pool: A. Scoring: direct_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-04 | core | COL
When practice could be done alone or with a partner, which do you usually choose?

A. Work through practice with a partner
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Work through practice independently

Other choices: Depends on the situation | Neither option fits | Skip
Context: learning. Pool: A. Scoring: reverse_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-05 | core | COL
When organizing a small shared activity, how do you prefer to divide the work?

A. Give each person a clear area to own
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Make the main decisions and work through details together

Other choices: Depends on the situation | Neither option fits | Skip
Context: planning. Pool: A. Scoring: direct_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-06 | core | COL
With time and resources equal, how would you prefer to improve a draft?

A. Work through revisions alongside someone
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Make my own revisions and then request input

Other choices: Depends on the situation | Neither option fits | Skip
Context: review. Pool: A. Scoring: reverse_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-07 | core | COL
For a shared outcome with separable tasks, which arrangement appeals to you?

A. Distinct responsibilities with agreed handoffs
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Shared responsibility with frequent joint work

Other choices: Depends on the situation | Neither option fits | Skip
Context: delivery. Pool: B. Scoring: direct_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-08 | core | COL
When generating options for an everyday challenge, what work arrangement do you prefer?

A. Generate the set together
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Generate a set independently and then compare

Other choices: Depends on the situation | Neither option fits | Skip
Context: brainstorm. Pool: B. Scoring: reverse_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-09 | core | COL
When examining a set of information, what arrangement feels most natural?

A. Take my own pass and report what I find
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Examine and interpret it jointly

Other choices: Depends on the situation | Neither option fits | Skip
Context: analysis. Pool: B. Scoring: direct_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-10 | core | COL
For a voluntary activity with several workable arrangements, what do you prefer?

A. Work side by side on a shared contribution
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Take responsibility for my own contribution

Other choices: Depends on the situation | Neither option fits | Skip
Context: community. Pool: B. Scoring: reverse_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-11 | core | COL
When designing a small solution with another person, how do you prefer to work?

A. Develop separate parts and integrate them
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Develop the main parts together

Other choices: Depends on the situation | Neither option fits | Skip
Context: design. Pool: B. Scoring: direct_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-12 | core | COL
For an improvement you could make alone or jointly, which feels more engaging?

A. Sharing the work and decisions throughout
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Having clear ownership of my own work

Other choices: Depends on the situation | Neither option fits | Skip
Context: improvement. Pool: B. Scoring: reverse_1_to_5.
This describes work arrangement, not teamwork ability or willingness to help.

## COL-F1 | followup | COL
If skills, time, and access were equal, would you prefer independent ownership, joint work, a blend, or a specific conditional arrangement?

Context: usual_preference. Trigger: ambiguous_or_conflicting_core. Scoring: clarify_existing_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## COL-F2 | followup | COL
How does your preferred amount of joint work change when collaborators have different expertise from yours?

Context: conditional_shift. Trigger: context_or_stakes_shift. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## COL-F3 | followup | COL
Can you recall a recent task where the opposite collaboration arrangement suited you well?

Context: counterexample. Trigger: clear_lean_needs_example. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## COM-01 | core | COM
In a routine update to someone who knows the project, how do you naturally begin?

A. State the main result or request first
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Explain the relevant background before the result or request

Other choices: Depends on the situation | Neither option fits | Skip
Context: update. Pool: A. Scoring: direct_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-02 | core | COM
When offering ordinary feedback to someone you know, what opening feels natural?

A. First establish shared understanding and then give the observation
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Lead with the main observation

Other choices: Depends on the situation | Neither option fits | Skip
Context: feedback. Pool: A. Scoring: reverse_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-03 | core | COM
When making a straightforward request, what do you tend to put first?

A. The request itself
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The context that explains why I am asking

Other choices: Depends on the situation | Neither option fits | Skip
Context: request. Pool: A. Scoring: direct_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-04 | core | COM
In a respectful disagreement, how do you usually open your response?

A. Acknowledge the other person's perspective before stating my difference
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. State the point on which I differ

Other choices: Depends on the situation | Neither option fits | Skip
Context: disagreement. Pool: A. Scoring: reverse_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-05 | core | COM
When sharing a recommendation, how do you naturally start?

A. Give my recommendation, then the reasoning
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Build the background and reasoning, then give my recommendation

Other choices: Depends on the situation | Neither option fits | Skip
Context: recommendation. Pool: A. Scoring: direct_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-06 | core | COM
When raising an ordinary work issue with a colleague, how do you tend to begin?

A. Connect with the person before introducing the issue
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Introduce the issue directly

Other choices: Depends on the situation | Neither option fits | Skip
Context: conversation. Pool: A. Scoring: reverse_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-07 | core | COM
For an email with one main point, what structure feels natural?

A. Put the point in the opening sentence
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Introduce the circumstances before the main point

Other choices: Depends on the situation | Neither option fits | Skip
Context: email. Pool: B. Scoring: direct_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-08 | core | COM
When correcting a small misunderstanding, how do you usually begin?

A. Establish common ground before the clarification
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. State the clarification first

Other choices: Depends on the situation | Neither option fits | Skip
Context: correction. Pool: B. Scoring: reverse_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-09 | core | COM
When explaining a decision you have made, where do you naturally start?

A. With the decision
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. With the context that led to the decision

Other choices: Depends on the situation | Neither option fits | Skip
Context: decision. Pool: B. Scoring: direct_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-10 | core | COM
When expressing an everyday work boundary, what opening feels natural?

A. Acknowledge the situation or relationship before stating the boundary
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. State the boundary clearly at the start

Other choices: Depends on the situation | Neither option fits | Skip
Context: boundary. Pool: B. Scoring: reverse_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-11 | core | COM
When handing over a task to someone, what do you naturally explain first?

A. What needs to happen next
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The background that makes the next step understandable

Other choices: Depends on the situation | Neither option fits | Skip
Context: handoff. Pool: B. Scoring: direct_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-12 | core | COM
When discussing a manageable concern with someone you trust, how do you start?

A. Set a supportive conversational tone before naming the concern
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Name the concern first

Other choices: Depends on the situation | Neither option fits | Skip
Context: concern. Pool: B. Scoring: reverse_1_to_5.
This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge.

## COM-F1 | followup | COM
Looking only at how you open a message, do you usually lead with the point, lead with context or connection, use a blend, or vary by a specific condition?

Context: usual_preference. Trigger: ambiguous_or_conflicting_core. Scoring: clarify_existing_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## COM-F2 | followup | COM
Does your opening style change between a routine factual update and a conversation where the relationship needs attention?

Context: conditional_shift. Trigger: context_or_stakes_shift. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## COM-F3 | followup | COM
Can you recall a recent time when changing your usual message opening helped the other person understand?

Context: counterexample. Trigger: clear_lean_needs_example. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## CHG-01 | core | CHG
When your current routine works adequately, what usually appeals to you?

A. Continue with the familiar routine
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Introduce some variety or try another routine

Other choices: Depends on the situation | Neither option fits | Skip
Context: routine. Pool: A. Scoring: direct_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-02 | core | CHG
When two tools are equally suitable and accessible, which tends to appeal to you?

A. The unfamiliar tool I could explore
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. The tool I already know

Other choices: Depends on the situation | Neither option fits | Skip
Context: tool. Pool: A. Scoring: reverse_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-03 | core | CHG
For a recurring task where the usual method works, what do you naturally prefer?

A. Reuse the familiar method
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Try a different workable method

Other choices: Depends on the situation | Neither option fits | Skip
Context: method. Pool: A. Scoring: direct_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-04 | core | CHG
When choosing an optional learning activity, which tends to attract you?

A. Exploring something new
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Deepening something familiar

Other choices: Depends on the situation | Neither option fits | Skip
Context: learning. Pool: A. Scoring: reverse_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-05 | core | CHG
For an ordinary free evening with equally convenient choices, what appeals to you?

A. A familiar activity I enjoy
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. An unfamiliar activity I could try

Other choices: Depends on the situation | Neither option fits | Skip
Context: leisure. Pool: A. Scoring: direct_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-06 | core | CHG
When a familiar content format is serving its purpose, what feels appealing?

A. Experiment with another format
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Continue refining that format

Other choices: Depends on the situation | Neither option fits | Skip
Context: format. Pool: A. Scoring: reverse_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-07 | core | CHG
When you can choose how varied your week feels, what do you prefer?

A. A fairly familiar mix of activities
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. A more varied mix with unfamiliar activities

Other choices: Depends on the situation | Neither option fits | Skip
Context: week. Pool: B. Scoring: direct_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-08 | core | CHG
For work that can be done equally well in either setting, what do you prefer?

A. Try a different setting
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Use my familiar setting

Other choices: Depends on the situation | Neither option fits | Skip
Context: setting. Pool: B. Scoring: reverse_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-09 | core | CHG
When a reliable approach is available and alternatives cost about the same, what do you prefer?

A. Use the reliable familiar approach
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Explore a different viable approach

Other choices: Depends on the situation | Neither option fits | Skip
Context: practice. Pool: B. Scoring: direct_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-10 | core | CHG
When two optional projects are equally worthwhile and manageable, what attracts you?

A. A project introducing unfamiliar methods
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. A project using familiar methods

Other choices: Depends on the situation | Neither option fits | Skip
Context: project. Pool: B. Scoring: reverse_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-11 | core | CHG
When a recurring process is adequate, what do you feel drawn to do?

A. Keep the established process largely stable
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Explore alternative ways to run it

Other choices: Depends on the situation | Neither option fits | Skip
Context: process. Pool: B. Scoring: direct_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-12 | core | CHG
When choosing between equally accessible weekend activities, what appeals to you?

A. Try something I have not done before
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Return to something familiar

Other choices: Depends on the situation | Neither option fits | Skip
Context: activity. Pool: B. Scoring: reverse_1_to_5.
This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement.

## CHG-F1 | followup | CHG
When the familiar option works and alternatives cost about the same, do you prefer familiarity, experimentation, a blend, or a specific conditional approach?

Context: usual_preference. Trigger: ambiguous_or_conflicting_core. Scoring: clarify_existing_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## CHG-F2 | followup | CHG
How does your appetite for variety change when your workload is already high?

Context: conditional_shift. Trigger: context_or_stakes_shift. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## CHG-F3 | followup | CHG
Can you recall a recent time when using a familiar approach or trying a new one against your usual preference helped?

Context: counterexample. Trigger: clear_lean_needs_example. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## EXE-01 | core | EXE
With control over your day and equally manageable tasks, what work rhythm do you prefer?

A. Stay with one priority for an extended block
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Rotate among several priorities across the day

Other choices: Depends on the situation | Neither option fits | Skip
Context: day. Pool: A. Scoring: direct_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-02 | core | EXE
When several small projects are available, what feels natural?

A. Keep several moving in parallel
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Bring one to a useful stopping point before starting another

Other choices: Depends on the situation | Neither option fits | Skip
Context: project. Pool: A. Scoring: reverse_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-03 | core | EXE
When studying several topics at your own pace, what do you prefer?

A. Spend a substantial block on one topic
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Alternate among topics in shorter blocks

Other choices: Depends on the situation | Neither option fits | Skip
Context: learning. Pool: A. Scoring: direct_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-04 | core | EXE
For several creative tasks with similar deadlines, what rhythm appeals to you?

A. Move among them as I develop each
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Work deeply on one before moving to the next

Other choices: Depends on the situation | Neither option fits | Skip
Context: creative. Pool: A. Scoring: reverse_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-05 | core | EXE
For a set of manageable administrative tasks, what do you prefer?

A. Finish a category before moving to another
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Alternate among categories

Other choices: Depends on the situation | Neither option fits | Skip
Context: admin. Pool: A. Scoring: direct_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-06 | core | EXE
With no external interruptions, how would you arrange a productive morning?

A. Several different focuses across the morning
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. One main focus for most of the morning

Other choices: Depends on the situation | Neither option fits | Skip
Context: morning. Pool: A. Scoring: reverse_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-07 | core | EXE
When exploring several useful resources without a deadline, what do you prefer?

A. Stay with one resource to a useful stopping point
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Move among multiple resources

Other choices: Depends on the situation | Neither option fits | Skip
Context: reading. Pool: B. Scoring: direct_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-08 | core | EXE
When working on several personal projects, which arrangement feels natural?

A. Keep several actively progressing together
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Keep one as the main active project at a time

Other choices: Depends on the situation | Neither option fits | Skip
Context: making. Pool: B. Scoring: reverse_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-09 | core | EXE
When reviewing several items, what rhythm do you prefer?

A. Complete a substantial pass on one before the next
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Switch among items during the review

Other choices: Depends on the situation | Neither option fits | Skip
Context: review. Pool: B. Scoring: direct_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-10 | core | EXE
When scheduling discretionary work, what block pattern appeals to you?

A. Shorter blocks distributed across priorities
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Longer blocks devoted to one priority

Other choices: Depends on the situation | Neither option fits | Skip
Context: schedule. Pool: B. Scoring: reverse_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-11 | core | EXE
When you have several equally important tasks and enough time, what feels satisfying?

A. Make concentrated progress on one task
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Make smaller advances on several tasks

Other choices: Depends on the situation | Neither option fits | Skip
Context: progress. Pool: B. Scoring: direct_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-12 | core | EXE
When practicing multiple skills, what rhythm do you prefer?

A. Rotate between skills within the practice period
B. Mostly A, with some E
C. An equal blend of A and E
D. Mostly E, with some A
E. Focus on one skill for a sustained period

Other choices: Depends on the situation | Neither option fits | Skip
Context: practice. Pool: B. Scoring: reverse_1_to_5.
This describes work rhythm, not productivity, attention disorders, or ability to finish.

## EXE-F1 | followup | EXE
With interruptions and deadlines held equal, do you prefer sustained focus, rotating priorities, a blend, or a specific conditional rhythm?

Context: usual_preference. Trigger: ambiguous_or_conflicting_core. Scoring: clarify_existing_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## EXE-F2 | followup | EXE
How does your preferred work rhythm change when one task is blocked or waiting on someone else?

Context: conditional_shift. Trigger: context_or_stakes_shift. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## EXE-F3 | followup | EXE
Can you recall a recent time when the opposite work rhythm suited the task well?

Context: counterexample. Trigger: clear_lean_needs_example. Scoring: context_only.
Never add this response as another independent dimension score. Preserve conditional observations; any correction must identify the original core response.

## MOT-01 | context | MOT
Of autonomy, mastery, contribution, connection, recognition, security, and achievement, which one or two have mattered most in your recent work?

Context: choice. Trigger: context_coverage. Scoring: context_only.
Tag only selected motivators; allow another motivator or none.

## MOT-02 | context | MOT
What made one recent task feel especially worthwhile to you?

Context: example. Trigger: context_coverage. Scoring: context_only.
Record the example; propose a motivator only when the answer supports it.

## MOT-03 | context | MOT
If two worthwhile projects paid the same, what would make you choose one over the other?

Context: tradeoff. Trigger: context_coverage. Scoring: context_only.
Record the stated reason without assuming pay is unimportant.

## MOT-04 | context | MOT
What kind of acknowledgment or outcome makes you feel that your effort was worthwhile?

Context: reward. Trigger: context_coverage. Scoring: context_only.
Allow private satisfaction, visible progress, appreciation, impact, or another answer; no forced ranking.

## MOT-05 | context | MOT
What keeps you engaged after the novelty of a project wears off?

Context: sustain. Trigger: context_coverage. Scoring: context_only.
Capture sustained motivation and its conditions.

## MOT-06 | context | MOT
Where in your current work would having more choice make the biggest difference to your motivation?

Context: autonomy. Trigger: context_coverage. Scoring: context_only.
Capture the specific area; do not infer global autonomy priority from the prompt alone.

## PRS-01 | context | PRS
When ordinary work pressure increases, what tends to change first in how you work?

Context: shift. Trigger: context_coverage. Scoring: context_only.
Capture a reported shift without diagnosing its cause.

## PRS-02 | context | PRS
What is an early sign that your usual working approach is becoming less helpful?

Context: signal. Trigger: context_coverage. Scoring: context_only.
Capture a self-observed sign and its context.

## PRS-03 | context | PRS
When demands pile up, what practical support tends to help you most?

Context: support. Trigger: context_coverage. Scoring: context_only.
Capture a support preference; do not infer a permanent trait.

## PRS-04 | context | PRS
In a recent demanding period, what did you notice yourself doing differently?

Context: recent. Trigger: context_coverage. Scoring: context_only.
Record period-specific behavior separately from baseline.

## PRS-05 | context | PRS
After a demanding stretch, what helps you return to a workable rhythm?

Context: recovery. Trigger: context_coverage. Scoring: context_only.
Record the user-defined recovery practice without medical interpretation.

## PRS-06 | context | PRS
Which normally useful habit can become unhelpful when you are under pressure?

Context: overuse. Trigger: context_coverage. Scoring: context_only.
Tag the named habit and reported impact, not a presumed weakness.

## ENV-01 | context | ENV
What conditions helped you do your best work on a recent task?

Context: enable. Trigger: context_coverage. Scoring: context_only.
Capture observed enabling conditions, not an idealized personality description.

## ENV-02 | context | ENV
Which feature of your current work environment most often drains your energy?

Context: drain. Trigger: context_coverage. Scoring: context_only.
Record the feature and stated impact; avoid inferring a cause beyond the answer.

## ENV-03 | context | ENV
What information or conditions do you need before a task feels workable?

Context: clarity. Trigger: context_coverage. Scoring: context_only.
Capture practical prerequisites without converting them to dimension scores.

## ENV-04 | context | ENV
What communication arrangement helps you work well with other people?

Context: communication. Trigger: context_coverage. Scoring: context_only.
Capture channel, timing, clarity, or access preferences as stated.

## ENV-05 | context | ENV
What pace and pattern of demands lets you do work you feel good about?

Context: pace. Trigger: context_coverage. Scoring: context_only.
Capture a sustainable arrangement in the user's terms.

## ENV-06 | context | ENV
What one change to your work environment would most improve your next week?

Context: adjustment. Trigger: context_coverage. Scoring: context_only.
Capture a feasible desired change; feasibility remains to be checked.

## CON-01 | context | CON
What current constraint most affects how you work, even when you would prefer to work differently?

Context: constraint. Trigger: context_coverage. Scoring: context_only.
Capture workload, role, resources, commitments, or user-specified constraint without requesting private details.

## CON-02 | context | CON
Which part of your current role requires an approach that differs from your preference?

Context: role. Trigger: context_coverage. Scoring: context_only.
Separate required behavior from preferred behavior.

## CON-03 | context | CON
What is competing most strongly for your time or attention right now?

Context: capacity. Trigger: context_coverage. Scoring: context_only.
Record only necessary practical context.

## CON-04 | context | CON
Which part of your current work setup can you realistically change yourself?

Context: control. Trigger: context_coverage. Scoring: context_only.
Distinguish personal discretion from dependencies.

## CON-05 | context | CON
What missing resource or support is most limiting your progress right now?

Context: resources. Trigger: context_coverage. Scoring: context_only.
Capture a concrete gap without treating it as low motivation or low ability.

## CON-06 | context | CON
What upcoming change should we account for when interpreting your answers today?

Context: horizon. Trigger: context_coverage. Scoring: context_only.
Record a temporary context and a review trigger if the user supplies one.


---
## Machine-readable configuration
```json
{
  "package_version": "1.0.0",
  "status": "Original educational prototype; not psychometrically validated",
  "dimensions": [
    {
      "id": "PRO",
      "name": "Processing style",
      "low": "Private reflection",
      "high": "Conversation",
      "definition": "How someone develops an initial understanding or position.",
      "boundary": "This describes preferred processing, not sociability, confidence, or intelligence."
    },
    {
      "id": "ATT",
      "name": "Attention style",
      "low": "Concrete details",
      "high": "Possibilities and connections",
      "definition": "Where attention goes first when making sense of something.",
      "boundary": "This describes a starting point, not accuracy, creativity, or strategic ability."
    },
    {
      "id": "PLN",
      "name": "Planning style",
      "low": "Structure early",
      "high": "Options open",
      "definition": "How early someone prefers to establish a sequence and commitments.",
      "boundary": "This describes preferred structure, not reliability or organizational skill."
    },
    {
      "id": "ACT",
      "name": "Action style",
      "low": "Investigate first",
      "high": "Try and learn",
      "definition": "How someone reduces uncertainty before an initial move.",
      "boundary": "This describes approach at comparable stakes, not courage, impulsivity, or risk tolerance."
    },
    {
      "id": "COL",
      "name": "Collaboration style",
      "low": "Independent ownership",
      "high": "Shared problem-solving",
      "definition": "How someone prefers to distribute thinking and ownership on suitable tasks.",
      "boundary": "This describes work arrangement, not teamwork ability or willingness to help."
    },
    {
      "id": "COM",
      "name": "Communication style",
      "low": "Conclusion first",
      "high": "Context and relationship first",
      "definition": "How someone prefers to open a substantive message or conversation.",
      "boundary": "This describes sequencing, not honesty, empathy, assertiveness, or kindness. Context and relationship are distinct facets; report a split when they diverge."
    },
    {
      "id": "CHG",
      "name": "Change preference",
      "low": "Familiar approaches",
      "high": "Experimentation and variety",
      "definition": "How much method variety someone prefers when the current approach is adequate.",
      "boundary": "This describes preference at comparable cost, not adaptability, ambition, or resistance to improvement."
    },
    {
      "id": "EXE",
      "name": "Execution style",
      "low": "Sustained single focus",
      "high": "Multiple active priorities",
      "definition": "How someone prefers to arrange attention across manageable work.",
      "boundary": "This describes work rhythm, not productivity, attention disorders, or ability to finish."
    }
  ],
  "bands": {
    "low": "1 <= mean < 2.5",
    "middle": "2.5 <= mean <= 3.5",
    "high": "3.5 < mean <= 5"
  },
  "minimum_independent_scores": 2,
  "discordance_range_gte": 3,
  "archetypes": [
    {
      "id": "deliberate_builder",
      "name": "The Deliberate Builder",
      "targets": {
        "PLN": "low",
        "ACT": "low",
        "EXE": "low"
      },
      "description": "May enjoy giving an idea structure, understanding the route, and progressing through focused work.",
      "possible_overuse": "Preparation can continue after enough information is available.",
      "experiment": "Set a small information threshold and a date for a reversible first attempt."
    },
    {
      "id": "adaptive_explorer",
      "name": "The Adaptive Explorer",
      "targets": {
        "CHG": "high",
        "PLN": "high",
        "ATT": "high"
      },
      "description": "May enjoy exploring possibilities while allowing the route to evolve.",
      "possible_overuse": "Options can remain open longer than a shared commitment allows.",
      "experiment": "Choose one exploration window and one explicit decision point."
    },
    {
      "id": "collaborative_catalyst",
      "name": "The Collaborative Catalyst",
      "targets": {
        "COL": "high",
        "PRO": "high",
        "COM": "high"
      },
      "description": "May develop momentum by thinking with others and establishing shared context.",
      "possible_overuse": "Progress can become dependent on access to other people.",
      "experiment": "Pair a short joint discussion with one clearly owned next action."
    },
    {
      "id": "independent_architect",
      "name": "The Independent Architect",
      "targets": {
        "COL": "low",
        "PRO": "low",
        "ATT": "high"
      },
      "description": "May enjoy developing broader concepts through private thinking and clear ownership.",
      "possible_overuse": "A developed idea may reach collaborators too late for useful input.",
      "experiment": "Share a rough outline at an agreed early checkpoint."
    },
    {
      "id": "practical_navigator",
      "name": "The Practical Navigator",
      "targets": {
        "ATT": "low",
        "COM": "low",
        "PLN": "high"
      },
      "description": "May prefer concrete information, clear messages, and flexibility in the route.",
      "possible_overuse": "An immediate next step can obscure a dependency that needs advance coordination.",
      "experiment": "State the next step and name one dependency before proceeding."
    },
    {
      "id": "possibility_connector",
      "name": "The Possibility Connector",
      "targets": {
        "ATT": "high",
        "COL": "high",
        "CHG": "high"
      },
      "description": "May enjoy connecting emerging possibilities through shared exploration.",
      "possible_overuse": "Interesting connections can create more simultaneous commitments than intended.",
      "experiment": "Capture new possibilities in a backlog and jointly select one to test."
    },
    {
      "id": "focused_finisher",
      "name": "The Focused Finisher",
      "targets": {
        "EXE": "low",
        "PLN": "low",
        "COL": "low"
      },
      "description": "May prefer a clear plan, defined ownership, and sustained attention through a useful stopping point.",
      "possible_overuse": "Protecting focus can delay feedback or adjustment.",
      "experiment": "Add one feedback checkpoint before the final work block. The label does not establish completion ability."
    },
    {
      "id": "experimental_maker",
      "name": "The Experimental Maker",
      "targets": {
        "ACT": "high",
        "CHG": "high",
        "ATT": "low"
      },
      "description": "May enjoy learning through concrete attempts and alternative methods.",
      "possible_overuse": "Repeated experiments can make it hard to retain lessons or stabilize a useful method.",
      "experiment": "Define one observable test result and record it before starting the next test."
    }
  ],
  "selection": {
    "core": 16,
    "context": 4,
    "adaptive_max": 4,
    "closing_max": 1,
    "assessment_cap": 25,
    "core_rule": "One item from pool A and one from pool B for every dimension; distinct context tags; COM one odd and one even item to cover both facets."
  },
  "default_session": [
    "PRO-01",
    "ATT-01",
    "PLN-01",
    "ACT-01",
    "COL-01",
    "COM-01",
    "CHG-01",
    "EXE-01",
    "MOT-01",
    "PRS-01",
    "PRO-07",
    "ATT-07",
    "PLN-07",
    "ACT-07",
    "COL-07",
    "COM-08",
    "CHG-07",
    "EXE-07",
    "ENV-01",
    "CON-01"
  ],
  "closing_prompt": "What important part of how you work have we missed?"
}
```

Validation: 57 structural and reference-scoring checks passed. Live Grok integration and human pilot testing remain to be done.
