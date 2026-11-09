---
name: design-master
description: Orchestrator for all UI/UX design work. Use when the user says "design this", "improve this design", "unslop this page" or similar. Interviews the requester until the style is locked, runs the sub-skills in order, and does not stop until the result is complete.
---

# Design Master - the orchestrator

## Principle (from Charles Liu's Removing AI Slop series)
Don't just stop when it works. Keep going until it feels expensive, intentional, and built around one clear idea.

Good work = 1 core idea + clear visual hierarchy + meaningful motion + complete states + specific copy.

## Mandatory steps

### 1. Interview first. Never guess.
If there is no Style Lock yet, do not start designing. Run the `design-brief` questions, summarize the answers as a Style Lock, and get the requester's approval.

Ask at least these 7 things:
1. What is the product, who uses it, and what must they accomplish in the first 10 seconds?
2. Mood: Premium / Playful / Calm / Bold / Luxury / Friendly / Clinical?
3. Three reference brands they like, and one they dislike (and why).
4. Colors that are banned / required, and preferred fonts.
5. Primary users: age, devices, mobile or desktop?
6. The single most important action on this screen.
7. Constraints: must the logo stay? Can the content change? Deadline?

If the requester says "up to you" or "just make it pretty", propose 3 style options (A / B / C) to choose from. Never silently pick one.

### 2. Always run the skills in this order
1. `design-brief` - lock the style
2. `unslop-audit` - find what looks like AI slop
3. `visual-hierarchy` - set the eye path
4. `typography-color` - type and color system
5. `ux-states-flow` - flows and complete states
6. `product-copy` - specific, concrete copy
7. `motion-feedback` - meaningful motion and feedback
8. `craft-polish` - pro-level finishing and QA

Do not skip steps. Do not add motion before the hierarchy is settled.

### 3. Work in Before / After rounds
Every round, explain:
- Before: what the problem was
- After: how it was fixed
- Why: which principle supports the change

### 4. Definition of done
Work is done only when ALL of these pass:
- One core idea, not everything shouting at once
- Hierarchy is clear within the first 3 seconds
- No slop indicator remains without a reason
- All states exist: Default / Loading / Success / Error / Empty / Disabled
- Every animation has a purpose, not just decoration
- Copy is specific and measurable, not generic
- The requester replies "OK, locked"

If it does not pass, ask which part to fix next. Do not declare it finished yourself.
