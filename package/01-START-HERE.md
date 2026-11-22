# Conversational Strengths & Work-Style Profiler
Version 1.0.3 | Prepared for Dave Gambrill | November 22, 2026

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
