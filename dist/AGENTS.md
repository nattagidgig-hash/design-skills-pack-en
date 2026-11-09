# Design Skills Pack

UX/UI design rules (anti-AI-slop). For any design task, start with design-master and do not begin designing until the user has confirmed a Style Lock.


---

## SKILL: design-master
> Orchestrator for all UI/UX design work. Use when the user says "design this", "improve this design", "unslop this page" or similar. Interviews the requester until the style is locked, runs the sub-skills in order, and does not stop until the result is complete.

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


---

## SKILL: design-brief
> Design brief interview. Use before starting any design work to ask the requester about their style until it is locked into a Style Lock. Never guess the style.

# Design Brief - ask until locked, never guess

## Purpose
Turn "make it pretty / make it look good / make it professional" into a measurable spec.

## Question set 1: Product
1. What should the user accomplish on this screen?
2. If the user looks for only 3 seconds, what one thing must they remember?
3. Which competitors or references do they like, and why?
4. Which reference do they dislike, and why?

## Question set 2: Style
Offer choices. Do not ask "what style do you like?" in the abstract.

**Mood:** Premium / Playful / Calm / Bold / Luxury / Friendly / Futuristic / Editorial / Minimal / Skeuomorphic
**Density:** Very airy / Airy / Medium / Dense (dashboard-like)
**Color:** Monochrome + 1 accent / 2 brand colors / Gradient with a reason / Dark mode / Light mode
**Type:** Serif / Clean sans / Mono for numbers and code only / Systematic mix
**Shape:** Very rounded / Medium rounded / Sharp / Concentric radius
**Motion:** Still and calm / Soft and smooth / Bouncy and fun / Fast and snappy

## Question set 3: Constraints
1. Must the existing logo, colors, or fonts stay?
2. Which words in the content must not change?
3. Mobile-first or desktop-first?
4. Are there users who are not tech-savvy? Is accessibility a requirement?

## Output: the Style Lock
Summarize in a short block like this, then wait for the requester to type "locked":

```
Product: ...
One Idea: ...
Mood: ...
Color: ...
Type: ...
Radius / Shadow: ...
Motion: ...
One CTA: ...
Do not: ...
```

Do not start designing until the requester has said "locked".

## Golden rules
- If the requester says "up to you", propose 3 style sets A / B / C with a short description of each. Do not choose for them.
- If the requester changes their mind midway, update the Style Lock and say which parts need to change as a result.
- Every later design decision must be traceable to the Style Lock.


---

## SKILL: unslop-audit
> Detects AI slop in design work. Use on AI-generated UI to report which parts look machine-made or unconsidered, then rank what to fix first.

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


---

## SKILL: visual-hierarchy
> Sets visual hierarchy so a viewer knows in 3 seconds what to look at first. Use when a page is crowded, everything competes for attention, or the CTA does not stand out.

# Visual Hierarchy - make the eye know where to go first

## Principles (from Charles Liu)
- 1 screen = 1 hero + 1 primary CTA
- If everything is emphasized, nothing is
- Big = important, close = related, space = breathing room

## Steps
1. Ask the requester: what is the single most important action?
2. Make that the largest, clearest element, in the position the eye reaches first.
3. Reduce everything else by one level: smaller, lighter, or hidden for now.
4. Group with spacing instead of boxes and borders.

## Rules to apply
- Remove filler badges and duplicate labels
- Headlines must be specific and measurable, e.g. "Agents that survive production" becomes "Cited answers from papers"
- The primary CTA must be clearly stronger than secondary buttons, not just slightly
- Show the actual product, not decorative imagery
- Enlarge the main feature; don't give every card equal weight
- Align by eye, not by rigid pixel math

## Questions to ask the requester
1. If only one button could stay on this screen, which one?
2. What should be seen second and third?
3. Is any important information unnecessary at first glance and could sit behind a click?

## Checklist to finish this step
- From 1 meter away you can still tell where the CTA is
- The headline is understood within 3 seconds
- No two things fight for attention at the same level


---

## SKILL: typography-color
> Builds a professional type and color system instead of random choices. Use when there are many fonts, many shades, hard-to-read text, or low contrast.

# Typography and Color - a system, not randomness

## Principles
- A font must have a job, not just look nice
- A color must have a reason, not just add variety

## Typography
1. One primary font and one secondary font. No more.
2. Mono only where needed: numbers, code, time, IDs.
3. No random italics. No long ALL CAPS.
4. Use tabular numbers so values don't jump when they change.
5. Wrap headlines well; never leave a single word orphaned on the last line.
6. Keep letter spacing consistent; no negative kerning that hurts reading.

## Questions to ask the requester
1. Serif, sans, or an editorial magazine feel?
2. Is there a brand font that must be used?
3. Are there older users or users with weak eyesight who need larger text?

## Color
1. One primary, one accent, one or two backgrounds. Done.
2. No default purple AI gradient unless the product gives a reason.
3. If you use a gradient, you must be able to say what it means (e.g. orange-to-lavender in a fitness app = energy + calm).
4. Tune contrast so text is readable, especially small and secondary text.
5. Shadows take the color of the scene, not pure black (e.g. a flight app login uses sky-blue shadows).

## Output
Deliver Color Tokens and a Type Scale:
- Primary / Accent / Background / Surface / Text Primary / Text Secondary
- H1 / H2 / Body / Caption with sizes and weights
- Examples of where each is used

Ask the requester whether this matches the Style Lock. If not, fix it before moving on.


---

## SKILL: ux-states-flow
> Designs complete flows and states, not just the happy-path screen. Use for forms, login, OTP, checkout, or any AI screen with loading.

# UX States and Flow - design for when it breaks too

## Principle (from Charles Liu)
Good work is not measured only on success. It is measured while loading, when wrong, and when there is no data.

## States every screen needs
1. Default
2. Loading / Streaming
3. Success
4. Error
5. Empty
6. Disabled
7. Focus / Active

If any is missing, ask the requester how it should look. Do not let the AI guess.

## Examples to imitate in thinking
**OTP:** Remove the Verify button and auto-submit when complete. Support SMS autofill. Give per-digit feedback and a clear Verified state. Always keep a Resend button; don't remove it just to look clean.

**Login:** One title and one primary CTA. Don't fill the screen with secondary buttons.

**AI chat:** Show what the AI is doing ("Reading your runs", "Checking your calendar") to build trust. Cite where data comes from. Prevent layout shift by reserving space while text streams.

## Questions to ask the requester
1. If the user enters something wrong, how do we tell them what and where?
2. If loading takes longer than 3 seconds, what do we show?
3. If there is no data at all, is the page blank or does it invite the user to start?
4. Are there cases that need Resend / Retry / Back? Never remove these for looks.

## Checklist
- The user never has to guess what to do next
- Every action gets immediate feedback
- No silent buttons, no endless loading without explanation


---

## SKILL: product-copy
> Writes specific, concrete product copy instead of generic AI wording. Use when a headline sounds AI-written, text is wordy, or users can't tell what the product does.

# Product Copy - say it clearly, don't try to sound smart

## Principles
- AI writes broadly because it doesn't know the real product. The designer must write specifically.
- Remove repeated words, decorative words, and words that don't help a decision.

## Rules
1. A headline answers: what it does, for whom, what they get, how it is measured.
   Bad: "Agents that survive production"
   Good: "Cited answers from papers"

2. Remove these words unless there is evidence: Revolutionary / Cutting-edge / Seamless / Unlock / Elevate / Supercharge / AI-Powered

3. Show the real thing. For a running app, show the actual 12-week plan. For a flight app, show a real SFO to JFK ticket. Don't show empty boxes.

4. Button labels state the outcome, not the function.
   Bad: Submit / Verify Code
   Good: Add 36 runs to your calendar / Verify and continue

5. Help text is short and appears when the user needs it, not all upfront.

## Questions to ask the requester
1. How would you explain this product to a friend in one sentence?
2. What do customers complain about most? Could that sentence be the headline?
3. Are there real numbers to use, e.g. 36 runs / 12 weeks / saves 20 minutes?

## Output
Provide Before / After for every important piece of text, with the reason the new version is better.


---

## SKILL: motion-feedback
> Adds meaningful motion and feedback so an app feels alive. Use when buttons feel silent, numbers change abruptly, or screens feel static and AI-made.

# Motion and Feedback - move because it means something

## Principle
Good motion tells the user what is happening. It is not there to look flashy.

## Techniques from the Removing AI Slop series

**Age picker:**
- Draggable, with snapping, momentum, blur while values change, and haptic-like feedback on every tick. Shaped like a real wheel.

**Like button:**
- Heart turns red immediately (optimistic update), no spinner.
- Count rolls up (rolling count).
- A slight overshoot for a playful bounce.
- Double-tap on the image to like.
- A few small particles for personality, not so many it gets messy.

**OTP / form:**
- Fields react as you type, with per-state feedback through to Verified.

**Login:**
- Shared-element transition, e.g. a card flying from the login screen into a boarding pass.

## Rules
1. Every animation must answer: what does it tell the user?
2. Duration: micro-interactions 150-250ms, transitions 300-400ms. Never so slow it feels laggy.
3. Don't add a loading spinner if an optimistic update works.
4. Don't let layout jump when new data arrives. Reserve space first.
5. Add physical feel: snapping / momentum / overshoot / haptics.

## Questions to ask the requester
1. Should it feel fast and snappy, or soft and calm?
2. Is there any motion that causes dizziness and must be cut?
3. Do users enable Reduce Motion? Do we need a static version?

## Checklist
- You know instantly that a tap registered
- Numbers don't jump stiffly
- No motion repeats until it is annoying


---

## SKILL: craft-polish
> Final professional polish pass. Use as the last step before delivery to check the small details that make work feel expensive.

# Craft Polish - the small details that feel expensive

## Principle
The gap between AI work and professional work is in details most people can't name but can feel.

## Polish checklist

**Shape and shadow:**
- Inner radius = outer radius - padding, always (concentric corners)
- Shadows use the scene's color, not pure black, and are layered lightly
- Consistent spacing on a 4 / 8pt system

**Type and numbers:**
- Tabular numbers for values that change
- Headlines wrap cleanly with no orphaned words
- Contrast passes readability standards

**Icons and imagery:**
- Icons share one style and stroke weight
- The logo has a small micro-interaction (e.g. a window-seat logo shaped like an airplane window that moves)
- Backgrounds relate to the product (a flight app uses sky above the clouds, not a floating purple gradient)

**Skeuomorphism with a reason:**
- Use it when it helps users understand the real thing faster, e.g. boarding pass / airplane window / age wheel
- Never just for realism if it adds clutter

## Final questions to ask the requester
1. Viewed on a real phone, does it feel more expensive? Where does it still feel AI-made?
2. Is there anywhere you want it plainer, or with more personality?
3. Ready to lock this version, or do you want a version B to compare?

## Delivery criteria
Ready to deliver when:
- On first look it is clear what product this is
- No slop remains without a reason
- Every button gives feedback
- The requester says "locked"

If not, go back to the relevant skill. Do not force delivery.
