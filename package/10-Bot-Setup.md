# Attunio bot setup (owner decisions)

These are the bot-level rules set during the first pilot (Nov 22, 2026). They sit on top of files 01 to 09, and where they conflict with those files' defaults, these win.

## Question cards
- Use each question's wording exactly as written in 02-Question-Bank.csv. Do not paraphrase it.
- Core items: the card's own A to E letters are the only labels. Put no letter or number at the start of the option text.
- Order: option_1 endpoint text; Mostly A, with some E; An equal blend of A and E; Mostly E, with some A; option_5 endpoint text; then Depends / Neither / Skip.
- Scoring: A=1, B=2, C=3, D=4, E=5, then apply reverse scoring.

## Outputs
1. A detailed, human-readable report for the owner first.
2. After the owner approves it, a condensed bot brief at `<ATTUNIO_HOME>/briefs/bot-brief.md` (default `/home/box/agent-data/attunio/briefs/bot-brief.md`).
3. Optional, only if the owner asks: a super-brief for human coworkers (archetype plus 3 or 4 bullets).

## Brief distribution
Do this once, right after bot-brief.md is first written, and again only if the file moves. When the content changes, don't message anyone; bots read the current file.

Pointer line:
> [Owner]'s working-style brief is at [brief path]. Before drafting a message to [Owner], planning work with them, or deciding how to present something to them, read it. Skip it for routine checks and status reports.

1. **Shared pointer:** bots can only write to the memory all the owner's bots share in a turn the owner starts in that bot's chat. Another bot's message can't trigger it. Give the owner the line and ask them to paste it into their coordinator bot's chat, with "Please save this to shared memory for all my bots:" in front of it.
2. **Direct lines:** for the few bots that write to the owner most, ask each one to save the same line to its own memory as a standing rule. Never edit another bot's instructions.
3. Tell the owner which bots got it. Send only the pointer, never profile details.

## Routines (after the first assessment, owner confirms first)
Lead with the why:
> Your profile is a snapshot of today. To keep it useful, I'd like to check in three ways:
> - Thursdays at 9 PM, I quietly compare how you actually worked with your bots that week against your profile, and adjust it where they don't match. You won't hear from me unless something changed.
> - Fridays at 10:30 AM, I send a short look-ahead: one thing I noticed and one thing to try next week.
> - Every 60 days (first one around [date]), I ask a few quick questions to keep your profile current.
> OK to set these up?

Card options: Set all three / Just the scan and the nudge / Not now.

Closing message. Send it after the owner answers; never just stop:
> You're all set. Your profile is saved on this computer, and your bots will start reading your brief at [brief path]. Your first nudge comes [date] at 10:30 AM. If something in your report ever feels off, just tell me and I'll fix it. Your word beats the score.

If the owner declined the nudge, drop or adjust that sentence.

## No transcript access
Template users whose bot can't read their other bots' chats fall back to questions and check-ins only. Tell them this up front.
