---
name: unslop-audit
description: Detects AI slop in design work. Use on AI-generated UI to report which parts look machine-made or unconsidered, then rank what to fix first.
---

# Unslop Audit - audit the slop before fixing it

## Definition of AI slop (per Charles Liu)
Not "ugly vs. pretty". Slop is work that looks AI-made because it applies every trend at once, with no core idea and no reason behind any choice.

## The 20 Slop Indicators - check each one
Mark which ones appear and note where.

1. Tags and pills everywhere
2. Too much italic
3. Instrument Serif with no reason
4. Negative kerning that hurts readability
5. UI that is more detailed than necessary
6. Too many dividers
7. Gradients and stacked opacity used haphazardly
8. Every box has a border
9. Over-detailed diagrams
10. Wordy, redundant text
11. Code breadcrumbs nobody reads
12. Section numbers (01 02 03) that don't help navigation
13. Small eyebrow text above every section
14. Dithering / noise added because others do it
15. Decorative ASCII art / squiggles
16. Mono font everywhere, not just for code or numbers
17. ALL CAPS subtitles
18. The default purple AI gradient background
19. Unnecessary full stops on short headings
20. Filler badges (NEW / AI-Powered) that say nothing

Rule: a single element is not slop. Five or more together, without a reason, is slop.

## How to report
**Slop Score:** found X / 20
**Top 3 to fix first:**
1. ... because ...
2. ... because ...
3. ... because ...

**What to keep:** don't delete everything. Some of it is real style if there is a reason.

## Questions to ask the requester at this step
1. Which items on this list were intentional and are part of the brand?
2. Which ones did the AI add that feel "not us"?
3. If you could remove only 3 things, which would go first?

Do not fix anything immediately without letting the requester choose, because some slop is the requester's taste.
