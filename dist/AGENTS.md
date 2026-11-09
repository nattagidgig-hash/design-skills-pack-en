# Design Skills Pack

UX/UI design rules (anti-AI-slop). For any design task, start with design-master and do not begin designing until the user has confirmed a Style Lock.


---

## SKILL: design-master
> Orchestrator for all UI/UX design work. Works for any work type (landing pages, dashboards, forms, content pages, emails, slides, social posts), not just login screens. Use when the user says "design this", "improve this design", "unslop this page" or similar. Interviews the requester until the style is locked, runs the sub-skills in order, and does not stop until the result is complete.

# Design Master - the orchestrator

## Principle (from Charles Liu's Removing AI Slop series)
Don't just stop when it works. Keep going until it feels expensive, intentional, and built around one clear idea.

Good work = 1 core idea + clear visual hierarchy + meaningful motion + complete states + specific copy.

## Mandatory steps

### 0. Identify the work type first
Not everything is a login screen. Ask (or infer and confirm) which type this is, then weight the skills and questions accordingly:

| Type | What matters most | Lean hardest on |
|---|---|---|
| Landing / marketing page | Hero, one promise, proof, CTA | visual-hierarchy, product-copy, typography-color |
| App or dashboard used daily | Density, scanability, numbers, calm neutral surfaces | typography-color (tabular nums), ux-states-flow, craft-polish |
| Form, checkout, onboarding, auth | Friction, errors, recovery | ux-states-flow, product-copy, motion-feedback |
| Long-form content (article, docs, listing page) | Reading rhythm, measure, navigation | typography-color, visual-hierarchy |
| Settings, tables, admin | Clarity over decoration, empty states | ux-states-flow, visual-hierarchy |
| Email, slides, social post, thumbnail | Small/fast viewing, one idea per frame | visual-hierarchy, product-copy |

The "one primary action" question applies to screens with an action. For content pages the equivalent is "what should the reader remember or do next?"; for dashboards it is "what decision does this support?". Record the type in the Style Lock.

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

After the Style Lock is approved, use `charles-unslop` (bundled in `09-charles-unslop`) as the execution engine for steps 2-8 when you are changing real UI: it holds the full audit list (`references/signs.md`), exact starting values (`references/tokens.md`), and the ordered passes. The numbered skills above provide the interview, the approval gates, and the Before/After reporting around it.
For motion verified frame by frame, install `charles-polish` separately (see README).

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
0. What type of work is this? (landing page / app or dashboard / form or checkout / long-form content / settings or admin / email, slides, social post)
1. What should the user accomplish here? (For content: what should the reader remember or do next? For dashboards: what decision does it support?)
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
Type: ...
Product: ...
One Idea: ...
Mood: ...
Color: ...
Type: ...
Radius / Shadow: ...
Motion: ...
One CTA / main job: ...
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

> For the full audit, read `09-charles-unslop/references/signs.md` (the complete list of signs with how to fix each). The 20 below are a quick screening pass.

## Definition of AI slop
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

## More examples (general principles, not from the series)
**Dashboard:** every widget needs loading (skeleton at final size), empty ("No data yet" plus how to get some), error (what failed, retry), and stale-data states. Show units and the time range. Don't let a card collapse when empty.

**Checkout:** keep the order summary visible, validate fields inline on blur, keep entered data after an error, make the payment-failed state say what to do next.

**Long list / table:** empty, filtered-to-nothing (offer "clear filters"), partial load, and pagination or "load more" state.

**Settings:** show saved/unsaved state, confirm destructive actions with the consequence in plain words, make Undo available where possible.

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

## More examples (general principles, not from the series)
- **Dashboard numbers:** animate value changes briefly with tabular figures; never animate on every refresh.
- **Landing page scroll:** reveal only what supports the story. Don't fade in every section; keep content visible without JS or motion.
- **Lists and tables:** animate insert/remove so the eye tracks what changed; keep row height stable.
- **Settings toggles and saves:** instant visual change plus a small "Saved" confirmation, not a modal.
- **Content pages:** usually little or no motion. Stillness is a valid choice.

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

> Exact numbers (spacing, radii, type sizes, shadows) are in `09-charles-unslop/references/tokens.md`. For frame-by-frame motion verification and hill-climbing a working UI, use Charles Liu's `charles-polish` (install separately, see README).

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

## By work type (general principles, not from the series)
- **Landing:** hero fits the first screen at common sizes; one primary CTA repeated, not many different ones; real product image, not an illustration of the idea.
- **Dashboard/app:** alignment of numbers, consistent row heights, restrained color (color lives in the data), keyboard focus visible.
- **Forms:** label always visible, error text next to the field, correct input types and autocomplete.
- **Long-form:** line length about 60-75 characters, comfortable line height, clear heading rhythm.
- **Email/slides/social:** check at the real viewing size; keep every needed word readable at that size.

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


---

## SKILL: charles-unslop
> "Turn AI-looking UI into a designed interface with its own point of view: audit the tells, write a direction from the product, delete before restyling, fix spacing, color, icons, copy, type, layout and details in order, then give the screen one rich moment only this product could have. Use when a screen looks AI-generated, vibe-coded, generic or templated, when reviewing agent-built UI, or when asked to unslop, de-slop or make something stop looking like AI. Triggers on purple gradients, gradient text, glassmorphism, glows, emoji icons, sparkles, pill badges, centered heroes, three-card and bento grids, greeting headlines, fake proof, uppercase tracked labels, uneven spacing, pulsing elements. For making a screen that is already designed feel finished, use charles-polish."

# Unslop

Adapted from [unslop](https://github.com/heydamir/unslop) by Damir Sokolovsky ([@heydamir](https://x.com/heydamir)), CC BY 4.0, merged with Emil Kowalski's unslop-design skill and with feedback from Charles Liu's "Removing AI Slop" series. Changes: the passes were reordered around subtraction, and the rules on backgrounds, brand icons and materials were rewritten. Keep this credit in copies.

Nobody can point at the one element that makes a screen look generated. A model picks the most common option for every decision at once, and fifty median choices compound into a watermark. So fixing one element does nothing: walk the whole screen, in order.

Removing the tells is half the job. A clean screen that could belong to any product is the next template. Slop spreads richness over the chrome; craft keeps the chrome quiet and spends it on one moment.

## Run it

1. **Render it.** Screenshot the screen at its real size and judge that, not the code. If it will be seen small (a phone, a video, a thumbnail), judge it at that size too.
2. **Audit.** Walk [references/signs.md](references/signs.md). List every sign, one line each, with where it lives.
3. **Choose the scope** from the audit:
   - Signs across color, type, icons and copy → run everything below.
   - A designed screen with a few signs → fix only those. Keep its palette, type, layout and visual. Put bigger ideas in the report.
   - No signs → say so, suggest at most three refinements with exact values, and stop. Never change a good screen to make it different.
4. **Write the direction** (below). Show the audit and direction and wait for an answer, because a wrong direction redoes everything. Skip the wait only if told to just do it.
5. **Subtract.**
6. **Run the passes in order,** finishing each across the whole screen.
7. **Run the final audit.** Anything that fails goes back to its pass.

Keep the product. Features, real content and section order stay, and the product keeps its name. Never invent capabilities, or claims and facts about a real product; a new way of presenting something the product already does is design, not an invented feature. Placeholder content in a demo or mock may be replaced with specifics. Filler like "Powered by AI" or "Follow us for deals" isn't a feature, so it can go.

## Direction

Five lines, derived from what the product does, never from what's trending.

- **Product:** what it does and for whom, in one sentence.
- **Character:** two or three concrete words, like `calm, exact, a little warm`. Clean, modern, sleek, minimal and premium are banned because they describe every template.
- **World:** the place or material the product belongs to. A tide-table app lives near salt, charts and low light; a tax tool near ruled ledgers. The world sets the neutral tint and the accent. It doesn't have to become a picture.
- **Moment:** the one or two places the screen gets its richness. See pass 8: it may be a behaviour, real content, proportion, type or an object.
- **Signature:** one small detail only this product would have, used consistently.

Then write the **concept**: one sentence every later choice can be checked against. Example: "Every invoice reads like a letter from one person to another." Two checks before you keep it:

- **Does it survive the next state?** Walk it through empty, in use and done. A concept that only works on the opening frame is a poster, not a concept.
- **Did you write it to justify something you already wanted?** Then it filters nothing. It must rule out at least one thing you'd otherwise do.

**If the screen names no product,** ask. If you can't ask, or were told to just do it, then:

- A mock or demo: assume one specific, plausible product and write the whole direction for it, with `Product (assumed):` so it can be overruled. Never use a stray word in the copy as the world, and don't default to SaaS. Assume something with a particular world, since that's what gives the palette, type and accent something to come from. It must fit the features you're keeping: a GitHub button rules out a bakery. The world needn't become an object on screen. White, black and a system font with no reason is a template too.
- A real product you don't know: keep it neutral, make no claims, and list what you'd need to know.

Keep a real brand mark or color. A violet-to-blue gradient, a sparkle tile or a glossy orb doesn't count as brand unless the user says so.

## Subtract first

Agents add. A caption restating the heading, an icon on every label, a divider spacing already provides, a border on a surface with a shadow, a second CTA, a helper line under the input. Each is defensible and together they compete.

Walk every icon, line, badge, caption, container and word and ask: **what breaks if this is gone?** "Nothing" means delete. "It adds interest" and "it fills space" are why the model put it there, so they don't count. Walk twice, because deletions expose each other. The one signature from the direction is exempt, and only that one. If an element carries information people need (a password's rules, a price), move it, shrink it, or make it the moment; don't lose it.

The cuts generated screens need most:

- **Dividers.** Delete every divider that spacing can replace; proximity already groups things, and lines add noise. Lists, settings rows and suggestion chips almost never need them. Lines in a ledger or a table that help the eye track across a row can stay.
- **Subtitles under titles.** Delete unless they say something the title can't.
- **Nesting.** A container inside a container inside a card is a tell. If a map, image or chart is the content, run it to the edges of its parent. Delete wrappers until each surface has a job.
- **Two mechanisms for one job.** A progress bar and a step counter, a toast and a visible change, an icon and a label saying the same thing. Keep the better one. This isn't cutting a feature: the job still gets done.
- **Bolted-on controls.** A button floating beside a field belongs inside the field, as part of its empty or focused state.
- **Chrome the moment doesn't need,** like a Share button on something with nothing to share yet.

## The passes

The order matters: rhythm changes how everything else reads, and copy length decides type size and layout. Visuals and motion come last so they fit a screen that already works without them. Exact starting values are in [references/tokens.md](references/tokens.md).

### 1. Spacing
- Everything sits on a 4px grid. Replace one-offs like `mt-[13px]`.
- Same thing, same size: one row height, one gap, one card padding per set.
- Gaps inside a group are smaller than gaps between groups, so grouping needs no lines.
- Icons sit in one column, labels start on one line, numbers right-align. Nothing is nudged off its line.

### 2. Color
- One neutral ramp tinted toward the world, with three text roles. Five lavenders means nobody chose.
- Cream paper with muted earth tones is the post-AI default, the way indigo was. Use it only if the world demands it, and never because it feels tasteful. High-chroma color, pure white and near-black are all fair if the character calls for them.
- One accent in the chrome, covering a few percent of the screen. Unchosen purple is the loudest tell, so derive the hue from the world.
- Working screens people stare at (apps, dashboards) keep neutral surfaces; color lives in the content.
- Delete gradient text, colored glows and colored shadows, neon borders, and blobs behind content.
- Text keeps 4.5:1, including over backgrounds.

### 3. Icons
- Emoji become line icons from one set, at one size and stroke, in a text role's color. Emoji can't take your palette and read as placeholders.
- **Exception: third-party logos keep their real colors.** Google multicolor and Facebook blue are recognized before they're read (recognition over recall). Grey logos make people read.
- ✨ doesn't mean AI. If AI matters, the copy says what it does.
- An icon's end state must read on its own at 20–24 px. If it needs its animation to make sense, redraw it.

### 4. Copy
- Could a competitor paste this headline unchanged? Then rewrite it with this product's nouns.
- No exclamation marks, greeting headlines, hype words, or trailing periods on labels and buttons.
- A change says what it compares to: `+12% vs last month`.
- Read each line next to what's already on screen. If it repeats a number or a word nearby, cut it. A short line that's trying to sound charming reads as AI; say the plain thing.
- **Mock content is specific.** Never Maya, Sarah, Alex, Acme or John Doe; those names mark the screen as generated. Use a real-sounding person and detail: "we burnt the first batch, so yours is from the second" beats "thank you for your purchase".
- Fake proof gets deleted. If a claim can't be checked, ask, then make it specific or cut it. A real number is the strongest copy there is.

### 5. Type
- Choose type for the character. One interface family plus at most one partner, used for one distinctive decision. A display face appears once.
- Weights 400–500, 600 for rare emphasis. Hierarchy comes from size and color, never 800–900.
- Sentence case. Uppercase with wide tracking becomes sentence case, unless the real object you borrowed is uppercase, like a stamped tag or a boarding pass.
- `tabular-nums` and one number format across the screen. Negative tracking only on display sizes.

### 6. Layout
- Everything stacked and centered, three equal cards, bento grids, and a picture panel beside a form column are all defaults. To get out of the last one, let the form sit in the material rather than beside it. Size by content: give the important thing more room and let content break symmetry.
- Check the largest viewport too. A dead band is empty space with no material and no job. Fill it with the world (a surface, real content) or compose the form into it; don't just scale the type up.
- One primary action and at most one secondary.
- Apps keep real app proportions. Heroes are composed as a whole first screen with no dead band.
- The smallest viewing size is a layout. For a video or thumbnail, and only then, keep 24–32 px of air, let nothing hit the frame edge unless it's meant to bleed, and keep every word people need at 16 px or larger at that size.

### 7. Details
- Inner radius = outer radius − padding, never below 4. Not everything is a pill, and `rounded-2xl` isn't an answer.
- Control shape comes from the character, not the token table. Exact and technical: 2–6 px, thin fields. Soft and human: larger radii or full pills. Editorial: underlined fields, text buttons. Justify the shape from the character in one sentence; a 12 px radius "because it's standard" fails.
- One depth cue per surface. Border + shadow + ring + gradient is a model hedging.
- No dotted lines or dotted dividers unless the object is really perforated. They're the fastest way to make a chart or form look generated.
- Stat cards are numbers: no sparklines or icons to fill them. One main chart, one accent per chart.
- Hover and focus exist and stay inside the palette.

### 8. The moment
Agents jump to one of two templates: a flat illustration of something from the product's world, or a giant word above an ordinary form. Both look designed in a still and neither means anything. Don't take the first option that renders. Sketch one idea from each of these, in a sentence each:

1. **Behaviour:** something the interface does that only this product would do. It may look plain at rest.
2. **Real content:** the product's data, drawn with care, or its actual output.
3. **Proportion:** the important thing takes 70% of the screen and everything else gets out of the way.
4. **Type:** one size contrast, one huge number, or one line of copy set as the whole screen. It must carry meaning: the number is the answer, or the sentence changes as the state does. A big "Log in" fails, because the word isn't saying anything.
5. **A surface or object,** using the tree below.

Keep the one that passes both tests:

- **Is it an idea?** Take away the styling and describe it to someone. "Huge serif headline" isn't. "The invoice total is the page, and each paid line crosses itself off it" is.
- **Is the rest frame good on its own?** Most people only ever see the first state, so an idea that only appears after typing needs a rest frame that's already composed and already from this product's world. Big words above small controls, with the rest of the screen empty, fails however clever the next state is.

Then build its next state too. A concept you've only drawn isn't tested.

The display type sizes in the tokens are defaults, and a type-led moment overrides them.

```
How long do people stay on this screen?
├── Minutes or daily (app, dashboard, settings, chat in use)
│   → neutral surface. The moment is content.
└── Seconds, as a doorway (login, empty state, confirmation, hero)
    → a field or object is allowed if it passes all five:
      1. Reason: someone who hasn't seen your concept can guess why it's here.
      2. Palette of at most three hues, taken from the world.
      3. Real structure: light, depth, focus. A two-stop wash is not a field.
      4. The UI on top stays quiet and legible.
      5. Stock check: at the viewing size, could this come from an illustration pack or a template gallery? Layered flat hills, gradient suns and a dashed trail fail. If it does and two attempts don't fix it, go back to 1–4.
```

A gradient is slop as decoration and craft as material. What decides it is whether it has a reason, a chosen palette and quiet UI on top.

**Texture is optional.** Add at most one layer, and only to fix a named problem, like a gradient that bands:

| Texture | Use when | Fails when |
| --- | --- | --- |
| Grain or stipple | A gradient bands or feels digital; warm, physical worlds | Applied as a uniform trend layer to a flat color |
| Halftone dot grid | Over soft photographic color, to add structure | Dots compete with text |
| Topographic lines | Worlds with terrain, routes, data | Bright or dense enough to read as a pattern |
| Concentric rings | One focal object to radiate from | No focal object |
| Fluted glass | Something high-contrast sits behind it | Nothing to refract: it becomes a striped print |
| Pixel or reaction-diffusion | Editorial, heritage, high-contrast brands | On a plain modern interface, where it reads as a filter |

**Materials must earn themselves.** Frosted glass needs something meaningful behind it. Refraction needs a subject to bend, and text should bend through it without shattering. Liquid metal, chrome and glossy 3D are AI defaults when abstract; they're allowed only when the object means something in this product. A logo that does a job beats a logo that shines: a lighthouse mark whose beam sweeps while a backup runs is better than a chrome orb.

**Honor the object.** If you borrow a real thing, it must behave like one: paper doesn't fade, a lock's pins move the right way, and you don't write your reply on the letter you received.

**Characters and illustration** must look drawn for this page: colors from the page's palette, features in its ink, one line weight, no solid black masses or glove hands. If it reads as a sticker or emoji, redraw or remove it.

How to choose and generate scenes and objects is in [references/visuals.md](references/visuals.md); code treatments are in [references/effects.md](references/effects.md).

### 9. Motion
- Delete motion by default: looping pulses on things that aren't live, shimmer on headings, breathing glows, parallax, `transition-all`, `hover:scale` on cards, every section fading in on scroll.
- Keep motion that explains something. Tuning what's left is the polish skill's job.

## Final audit

1. Swap in another product's name. If the screen still fits, push the copy, visual and signature harder. (Assumed product: use its name. Truly neutral screen: skip this.)
2. What here would make a designer suspect a model built this? Fix it and ask once more. If you were given references, put yours beside one at the same size, name the gap and fix that.
3. Name the one choice a competitor couldn't paste. No answer means the moment isn't done. (Truly neutral screen: name the choice that comes from this screen's job, not from its styling.)
4. Delete one more thing. If something breaks, put it back and stop.
5. Compare with the audit list and report the direction, what changed per pass, and any prompt you wrote.


### Reference: 09-charles-unslop/references/effects.md

# Effects

Code treatments that turn an image into something made for this page. They are optional. Use one only when it fits the character in the direction, on the main visual only, and never as decoration on other elements.

## Glyphs

Draw the image as a grid of characters, brightness picking the character. It works best when the characters come from the product's own material, so the image is literally made of what the product deals with.

- Money, invoices, finance: `. : 1 7 4 0 8 $ %`
- Code, developer tools: `. : / { } < > = #`
- Music: note names like `c d e g a` and `♭ ♯`
- Writing, reading: lowercase letters of a word from the product
- Data, monitoring: `. · : | + ▪`

Keep the cell between 6 and 10px, use the mono from the type choice, and color the glyphs from the image or from the ramp. Let a few cells change slowly over time so the picture feels alive.

### Implementation

```js
function glyphs(canvas, image, { cell = 8, chars = ". :1740$%", font = "Geist Mono", fps = 8 } = {}) {
  const ctx = canvas.getContext("2d");
  const columns = Math.floor(canvas.width / cell);
  const rows = Math.floor(canvas.height / cell);

  const sample = document.createElement("canvas");
  sample.width = columns;
  sample.height = rows;
  const sampler = sample.getContext("2d", { willReadFrequently: true });
  sampler.drawImage(image, 0, 0, columns, rows);
  const pixels = sampler.getImageData(0, 0, columns, rows).data;

  const atlas = document.createElement("canvas");
  atlas.width = cell * chars.length;
  atlas.height = cell;
  const pen = atlas.getContext("2d");
  pen.font = `500 ${cell + 1}px ${font}`;
  pen.textAlign = "center";
  pen.textBaseline = "middle";
  pen.fillStyle = "#fff";
  [...chars].forEach((char, index) => pen.fillText(char, index * cell + cell / 2, cell / 2));

  const cells = [];
  for (let y = 0; y < rows; y++) {
    for (let x = 0; x < columns; x++) {
      const i = (y * columns + x) * 4;
      const light = (0.2126 * pixels[i] + 0.7152 * pixels[i + 1] + 0.0722 * pixels[i + 2]) / 255;
      cells.push({ x, y, light, color: `rgb(${pixels[i]},${pixels[i + 1]},${pixels[i + 2]})`, seed: Math.random() });
    }
  }

  const tinted = document.createElement("canvas");
  tinted.width = cell;
  tinted.height = cell;
  const tint = tinted.getContext("2d");

  const draw = (step) => {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    for (const c of cells) {
      if (c.light < 0.06) continue;
      const jitter = Math.sin(c.seed * 999 + step) > 0.92 ? 1 : 0;
      const pick = Math.min(chars.length - 1, Math.floor(c.light * chars.length) + jitter);
      tint.globalCompositeOperation = "copy";
      tint.drawImage(atlas, pick * cell, 0, cell, cell, 0, 0, cell, cell);
      tint.globalCompositeOperation = "source-in";
      tint.fillStyle = c.color;
      tint.fillRect(0, 0, cell, cell);
      ctx.drawImage(tinted, c.x * cell, c.y * cell);
    }
  };

  let frame = 0;
  let last = 0;
  let step = 0;
  let visible = true;
  new IntersectionObserver(([entry]) => (visible = entry.isIntersecting)).observe(canvas);
  const loop = (now) => {
    frame = requestAnimationFrame(loop);
    if (!visible || now - last < 1000 / fps) return;
    last = now;
    draw(step++);
  };
  frame = requestAnimationFrame(loop);
  return () => cancelAnimationFrame(frame);
}
```

For a large canvas, bake the tinted glyphs for each cell once into an offscreen canvas and only redraw the cells that change on a step.

## Halftone dots

Dots on a grid whose size follows brightness. Suits editorial, print and crafted characters. Same sampling as glyphs, but draw `arc` circles with a radius of `light * cell / 2` in one ink color on the page color.

## Dithering

An ordered or error diffusion dither into two or three colors from the ramp. Suits retro, technical and playful characters. Do it once when the image loads, not on every frame.

## Duotone

Map the image's brightness onto two colors, the darkest surface of the ramp and the accent or the primary text color. The simplest way to make any generated image belong to the palette. In CSS, a grayscale image under a `mix-blend-mode: color` layer of the accent, or an SVG `feColorMatrix` filter.

## Performance

These effects broke on weak laptops before, so keep to these rules.

- Read pixels once when the image loads. Never call `getImageData` inside the animation loop, it stalls the GPU and drops frames to single digits.
- Prepare glyph atlases and tinted cells ahead of time and draw them with `drawImage`.
- Animate at 8 to 12 steps per second, not 60, and change only a small share of cells per step.
- Pause when the canvas is off screen.
- Size the canvas for the device pixel ratio, but cap it at 2.

---

Part of unslop by Damir Sokolovsky ([@heydamir](https://x.com/heydamir)), CC BY 4.0. Keep this credit in copies and adaptations.



### Reference: 09-charles-unslop/references/signs.md

# Signs of slop

Go through every group and note each sign you find with where it lives. Each line pairs the sign with its fix.

## Surfaces and color

- Purple to blue or violet to pink gradients on backgrounds, cards, buttons or the active nav item → one neutral surface, accent only where it means something
- Gradient text in headings, numbers or the logo → solid primary text color
- Colored glows, like `shadow-[0_0_20px_rgba(139,92,246,0.5)]`, `drop-shadow` on emoji or glowing pills → remove, depth from surface steps and hairlines
- Radial color washes or blurred blobs behind content, with no reason in the product's world → remove. Whether a field may stay is decided by the moment tree in SKILL.md
- Neon or high contrast colored borders → hairline at 6 to 10% opacity
- Many near identical tints of the same hue for text, like five lavenders → three text roles from one neutral ramp
- Every element highlighted, so nothing stands out → one accent used once or twice per screen
- Glass cards with a white inner highlight and a colored shadow, or frosted glass over a flat background → a plain raised surface, unless there is something meaningful behind it to see through

## Type

- Headings at weight 800 or 900 → 400 to 500 and size for hierarchy
- Uppercase labels with wide tracking, like `NAVIGATION` or `PAID THIS MONTH` → sentence case at normal or slightly open tracking
- Too many sizes and weights on one screen → a few sizes from the scale, weights 400 and 500
- Numbers in mixed formats, like `$48,210` next to `$124,860.40`, or `07` → one format, tabular figures
- Negative letter spacing on small text → zero or slightly positive
- Italic used for emphasis → color or weight instead

## Icons

- Emoji as nav icons, label decoration or status, like 🏠 📥 🚀 💰 ⚠️ 📈 🔥 😬 → one line icon set or nothing
- Emoji inside pills and counts, like `18 👤` → plain number
- Icons in many sizes and colors → one size, one stroke, text role color. Third-party logos are the exception: they keep their real colors
- Icons nudged off the column → same icon box width in every row
- A sparkle ✨ for anything AI → remove or use a plain icon only where it explains something

## Spacing

- Arbitrary values, like `mt-[13px]`, `ml-[7px]`, `h-[31px]` → steps on the 4px scale
- Rows in one list with different heights or gaps → one height, one gap
- Groups that sit closer to their neighbours than to their own items → smaller gaps inside groups, bigger between them
- Uneven padding inside sibling cards → one padding
- Big empty gaps above a section and cramped space below it → balanced rhythm

## Copy

- Greeting headlines, like `Welcome back, Damir! 👋` → the page or period as the title
- Exclamation marks and `!!` → plain statement
- Changes without a reference, like `+12%!!` or `3 less!!` → `+12% vs last month`, `3 fewer vs last month`
- Wordy placeholders, like `Search anything...` → `Search`
- Hype words, like supercharge, seamless, unlock, magic, revolutionize → what the thing actually does
- Trailing periods on labels and buttons → none
- Fake looking data, like `$123,456` or `[X]` → plausible numbers
- Cute lines that only sound human, like `Bluer, if you like.` → say what it is: `For a friend.`
- Metadata repeating what the screen already shows, like `36 runs · 312 km` after a title → cut it
- A subtitle chained with separators, like `Tue, Thu 6:30 · Sat 7:00 · No conflicts` → one phrase: `Tue, Thu, Sat 6:30 (no conflicts)`

## Components

- Glowing pills for counts, plans, shortcuts or status → quiet mono text or a keycap
- Dotted lines, dotted dividers and dotted chart paths used as decoration → one thin solid line, or nothing. Keep dots only for a real perforation
- Dividers under a title that already has space around it → remove
- `PRO`, `New ✨`, `Beta 🚀` badges everywhere → remove or one quiet text badge
- Every element a full pill, from search to buttons to cards → radius by size, nested radius math
- Charts with rainbow bars, glowing bars, pill shaped bars or uppercase day labels → one or two series, muted grid and mono labels, one highlight color
- Every chart or stack in several shades of the accent, so nothing leads → neutral steps with the accent only on the one thing that matters
- Sparklines, tallies or mini bars added to every stat card → the number, its label and its change
- Equal cards side by side, each with the same chart or layout → one main chart, compact stats, varied widths
- Logo as a gradient tile with a sparkle and a gradient wordmark → product name as text plus a simple flat mark
- Logo mark as a glossy orb, a gradient ball or a glowing dot → a flat glyph in one solid color, or the wordmark alone

## Landing pages and heroes

- A pill badge above the headline, like `✨ Introducing X 2.0` → remove, or a quiet text link if it is real news
- A headline that could fit any product, like `Supercharge your workflow with AI` → say what the product does for whom
- Gradient or shimmer on the headline → solid text
- Floating blobs, orbs, grids and glowing lines behind the hero → plain background or one real product visual
- Everything stacked and centered, headline, text, buttons and a picture below → text over a large product view, or a layout set by what the content needs, see the Layout pass
- Three or more buttons, or chips and avatars stacked under the buttons → one primary and at most one secondary action
- `Trusted by 10,000+ teams`, `Loved by 10,000+`, rows of avatar dots or five stars without a source → ask if it is real, then make it quiet and specific or remove it
- Parallax and elements floating on scroll → static layout, motion only with a purpose
- Feature cards with an emoji, a bold title and a vague line each → fewer features, concrete copy, line icons or none

## Visuals

- Glossy 3D blobs, orbs, abstract liquid chrome or a purple nebula as the hero visual → the product itself or one concrete metaphor for what it does
- Stock robots, glowing brains, circuit lines or holograms for anything AI → remove, or show what the AI actually produces
- Text, fake buttons or a fake logo baked into an image → real text in the page, a clean image without text
- An image that does not blend into the page, with a hard edge and a different black → background matched to the page and a soft mask at the edges
- A visual on every section → one visual where it helps, usually only the hero

## Motion

- `animate-pulse`, `animate-ping` or breathing glows on things that are not live → static
- `transition-all` and `hover:scale` on cards and buttons → color or surface step on hover, a tiny scale down on press
- Bouncy springs and overshoot on simple UI → one ease-out curve
- Everything flying in on load from different directions → one short fade and rise with a small stagger
- Parallax, floating loops and elements that move on scroll → static layout
- Animating width, height, top or left → transform and opacity

## Structure

- A divider where spacing would do, including between settings rows and follow-up suggestions → remove, let proximity group
- A subtitle that restates the title → remove
- A container inside a container, like a rounded image inside a card → run the content to its parent's edges
- Two mechanisms for one job, like a progress bar plus a step counter → keep one
- A control floating beside the thing it acts on, like a clear button next to a search box → integrate it into the field's state

## Fake specificity

- Generic mock names, like Maya, Sarah, Alex or Acme → a specific, real-sounding person and detail
- Metaphors broken by behaviour, like paper fading in → behave like the real object

## Template look

These are not slop, but they are what a cleaned up screen falls back to when nobody made a decision. Watch for them after the passes.

- Pure grey #161616 page, Inter, white text and the old brand color on one button, on a product whose world is warm or bright → a ramp tinted toward the world and an accent from it
- A headline that would fit another product if you swapped the name → say what this product does, with its own nouns
- A hero visual that is an empty box or a generic picture → a product preview in code or an image from the world
- Every product getting the same layout, type and palette → let the direction choose

---

Adapted from unslop by Damir Sokolovsky ([@heydamir](https://x.com/heydamir)), CC BY 4.0: changed the glass, icon and chrome lines, and added Structure and Fake specificity. Keep this credit in copies and adaptations.



### Reference: 09-charles-unslop/references/tokens.md

# Tokens

Starting values for each pass. When the project already has a good system, keep its values and only fix how they are used. These are starting points, not a house style, so let the direction move them.

## Spacing scale

4, 8, 12, 16, 20, 24, 32, 40, 48, 64, 80, 96, 128

- Inside a control: 4 to 12
- Between related items, like rows in a list: 2 to 8
- Between groups, like a label and its list or two cards: 12 to 24
- Between sections: 32 to 64, landing sections 80 to 128
- Row heights: 32 compact, 36 default, 40 to 44 touch
- Hero: 96 to 128 from the navigation to the headline on desktop, 48 to 64 on mobile

## App layout

- Sidebar 240 to 280 wide, content fluid with page padding 24 to 32, capped around 1440 to 1600.
- Top bar or page header 56 to 64 tall.
- Navigation rows 32 to 36, gap 2 to 4, section labels 24 above and 8 below.
- Stat cards in a row share one height, usually 3 or 4 compact cards per row on desktop, numbers only.
- The main chart spans at least two thirds of the content width and is 280 to 360 tall. A second data block next to it is a list or table, narrower, not another chart.

## Neutral ramps

For apps and dashboards use graphite, or a ramp just as grey, for every surface. For landing pages pick the ramp whose tint matches the world in the direction. Warm suits paper, wood, food, craft and anything human. Ink suits night, sky, water and anything technical. You can tint your own ramp the same way, keeping saturation very low, so a surface never reads as a color on its own.

### Dark

| Role | Graphite | Warm | Ink |
| --- | --- | --- | --- |
| Deepest surface, like a sidebar | #0f0f10 | #12110f | #07080d |
| Page background | #141415 | #161513 | #0b0d14 |
| Card | #19191b | #1c1a18 | #11141c |
| Raised, like an active row or input | #232325 | #262421 | #1a1e28 |
| Hairline | primary text at 8% | primary text at 8% | primary text at 8% |
| Primary text | #ededed | #efe9de | #eef0f5 |
| Secondary text | #a1a1a6 | #aaa398 | #a3a9b8 |
| Muted text and icons | #85858b | #8a847a | #7a8296 |

### Light

| Role | Graphite | Warm | Ink |
| --- | --- | --- | --- |
| Page background | #fafafa | #f7f4ee | #f5f7fa |
| Card | #ffffff | #fdfbf7 | #ffffff |
| Raised, like an active row or input | #f4f4f5 | #efe9df | #eceff4 |
| Hairline | primary text at 8% | primary text at 8% | primary text at 8% |
| Primary text | #171717 | #1f1b16 | #111827 |
| Secondary text | #525252 | #5e554a | #4b5565 |
| Muted text and icons | #737373 | #7b7266 | #6b7487 |

Muted text is for meta and captions only and stays near 4.5 to 1 on its surface. Body text uses primary or secondary.

Semantic colors, toned to sit inside any ramp: positive #4cc38a on dark and #16a34a on light, negative #e5484d on dark and #dc2626 on light.

## Accent

- Keep a real brand color. A violet to blue or any other hue to hue glow gradient is slop, not a brand color, unless the user says otherwise.
- Without a brand color, take it from the world. Warm worlds suit amber, coral or ember orange. Cool worlds suit cobalt, teal or a clear sky blue. Natural worlds suit moss or sage. Avoid the purple to blue family unless the brand really is purple.
- Text on the accent reaches 4.5 to 1 contrast. Darken the accent or use dark text when it does not.
- The accent covers a few percent of the screen, like the primary action, the selection and one key figure.

## Buttons

- Hero buttons 44 to 48 tall, navigation buttons 32 to 36, padding 16 to 20 on the sides.
- Primary on dark: an off white from the ramp with dark text, or the accent. Primary on light: the primary text color as a fill with white text, or the accent.
- Secondary: the raised surface with a hairline, primary text.
- A soft top highlight like `inset 0 1px 0 rgba(255,255,255,0.12)` on dark buttons gives depth without a glow.

## Type families

Pick by the character in the direction. All of these are free, and a partner can come from any row.

| Character | Interface family | Optional partner |
| --- | --- | --- |
| Precise, technical, calm | Geist, Inter, IBM Plex Sans | Geist Mono, IBM Plex Mono, JetBrains Mono for figures and meta |
| Warm, friendly, human | Instrument Sans, DM Sans, Figtree | Instrument Serif or Newsreader for the hero headline only |
| Editorial, literary, crafted | Inter or Instrument Sans for the interface | Newsreader, Instrument Serif or Fraunces for headlines |
| Playful, bold | Space Grotesk, Bricolage Grotesque | a mono for small labels |

A display serif belongs to large headlines only, never to labels or buttons.

## Type scale

| Use | Size | Line height | Weight |
| --- | --- | --- | --- |
| Small labels, meta, counts | 12 | 16 | 400, mono welcome |
| Secondary text, captions | 13 to 14 | 20 | 400 |
| Body, nav items | 14 to 15 | 20 to 22 | 400 to 500 |
| Logo wordmark | 16 to 18 | 1 | 500 to 600 |
| Hero subhead | 18 to 20 | 28 to 30 | 400, secondary color, at most 36rem wide |
| Card figures | 28 to 32 | 1 | 500, tabular |
| Page title | 28 to 36 | 1.15 | 400 to 500 |
| Hero headline | 56 to 72 desktop, 36 to 44 mobile | 1.02 to 1.08 | 400 to 500 |

Letter spacing is 0 for anything under 16px, slightly positive like 0.01em is fine for small muted text. Display text from 40px can go to -0.02em, and from 56px to -0.03em.

## Radius

| Element | Radius |
| --- | --- |
| Keycap, tag, small button | 4 to 6 |
| Row, input, button | 8 to 10 |
| Card | 12 to 16 |
| Panel or window | 14 to 20 |

Nested radius: inner = outer − padding, never below 4. A 16px card with 8px padding holds items with an 8px radius.

## Icons

lucide, 16 or 18px, stroke 1.5, color of the muted or secondary text role, 8 to 10px gap to the label.

## Depth

- Dark: surface steps plus a hairline. An active row can carry `inset 0 1px 0 rgba(255,255,255,0.12)` as a top highlight.
- Light: `0 1px 2px rgba(0,0,0,0.05)` for small things, `0 8px 24px rgba(0,0,0,0.06)` for floating ones.

## Motion

One easing curve for everything, `cubic-bezier(0.22, 1, 0.36, 1)`.

| Use | Duration |
| --- | --- |
| Hover, press, toggles | 120 to 180ms |
| Menus, popovers, tooltips | 160 to 220ms |
| Entrances, sheets, layout changes | 300 to 500ms |
| Stagger between items | 40 to 60ms, at most six items |

- Rise distance on enter: 6 to 12px. Press scale: 0.97 to 0.98.
- Transition color, background, border, opacity and transform only.

---

Part of unslop by Damir Sokolovsky ([@heydamir](https://x.com/heydamir)), CC BY 4.0. Keep this credit in copies and adaptations.



### Reference: 09-charles-unslop/references/visuals.md

# Visuals

How to replace decorative filler with a visual that belongs to this product, and how to generate one when an image tool is available.

## Decide what the visual is

1. **Does the screen need one?** Dashboards, settings and most app screens do not. Landing heroes and empty states usually do.
2. **Is there an image tool?** For a landing hero, generate a scene from the world as the background of the whole hero, with the subject on one side and calm space for the headline on the other. Then show the product rising from the bottom edge. This is the strongest hero.
3. **Show the product.** Below the scene, or as the visual when there is no tool, build a preview in code of what the page already promises. Pick the one moment that proves the headline, not the whole app. A scheduling tool shows one week with a booked slot, a code review tool shows one diff with a comment, a habit app shows a streak on one card. Use the project's own components when they exist, otherwise careful HTML in the new palette, with plausible data and real looking names. Frame it like a window or a device only if that helps it read.
4. **Write the scene as one sentence.** Use the world and character from the direction and write the subject as one plain sentence before generating anything. If you cannot say it in one sentence, it is not clear yet.

These examples only show the shape of a good sentence. Do not reuse them, derive yours from the product in front of you.

- A tool that protects backups → a small lighthouse on a dark rocky coast with its beam reaching into fog
- A meditation app → a single cup of tea steaming on a windowsill at first light
- A logistics API → one container ship seen from straight above on a calm grey sea
- A language learning app → a stack of handwritten flashcards on a café table in afternoon sun

Avoid the AI defaults, unless the product is literally about them or the object has a job in the concept. No glossy blobs, orbs, nebulas, chrome liquid, floating cubes, neon circuits, holograms, glowing brains, robots, rockets or crystal shapes.

## Styles that work

Pick one that fits the character, and keep it for the whole page.

- **Painted background art.** A calm sky or landscape with one subject, painted like the backgrounds of modern Japanese animated films, crisp clouds and soft light, with open sky left for the text. Good for warm, hopeful, human products.
- **Cinematic photo of one object.** A single real thing in simple dramatic light on a plain field, like a lighthouse in fog or a paper object in mid air. Good for calm, serious, trustworthy products.
- **Soft stylized 3D.** One small scene or object with matte materials and gentle light, like a doorway standing in a meadow. Good for playful or friendly products.
- **Product object render.** A real looking object from the product, like a payment card, a phone or a package, studio lit with true materials, used as a moment inside the interface. Good for anything that touches the physical world.
- **Light and optics.** One physical phenomenon on a dark field, like light splitting through a prism. Good for technical or data products.
- **Engraving or print.** A monochrome engraving or woodcut in one ink on a soft tinted page, with type and palette that belong to the same world. Good for products with heritage, craft or an editorial voice.
- **A code treatment over an image.** Rendering a generated image as glyphs, dots or a duotone in the page palette, so it feels made for the page. See [effects.md](effects.md).

What tends to fail:

- Prompts that ask for film grain, paper grain or a mottled texture. Models bake a fine checker pattern into the image. Add texture in code if you need it.
- A print style, like engraving, woodcut or risograph, on one image while the rest of the page is a plain modern interface. It reads as a filter. The same styles work well when the whole brand lives in them, with matching type and a paper palette, like a monochrome engraving on a soft tinted page.
- Several subjects or a busy collage. The idea stops reading in a second.
- Purple and blue glossy abstractions of any kind.

## Objects for moments

Besides whole scenes, generate single objects to place into the interface, like a payment card, a phone, a parcel, a coffee cup or a notebook from the product's world. They make a coded preview feel real.

- Ask for one object, studio lit, on a plain background in the exact page color, with soft contact shadow and nothing else in frame.
- Ask for the angle you need in the layout, like "tilted 20 degrees, seen slightly from above".
- If the tool can remove backgrounds, cut the object out. Otherwise blend it with a mask into the page color.
- Place it overlapping the edge of a card or window, a little rotated, with a soft shadow in the ramp's darkest color, so it sits in the same space as the UI.
- Background removal deletes dark areas that are close to the background color, like a switched off black screen. Ask for the screen in a contrasting flat color, or rebuild the alpha from the outer edge of the cutout.
- To show real UI on a generated device, generate it straight on with no perspective, measure the screen rectangle, lay HTML over it and rotate both together. The text stays sharp and real.
- Everything inside one visual tells the same story. If the list shows invoice INV-0142 for a client, the phone shows the same client, number and amount.

## Generate it

Look for an image generation tool among the tools you have, for example an MCP server for fal, Replicate, OpenAI images, Higgsfield or a design tool. If there is one:

- Show the user the prompt, the model and the size, and ask before running, since generation can cost money.
- Run once. Judge the result against the one sentence and the palette before trying again, and change the prompt rather than rerolling the same one.
- Save the result into the project's assets, not a temporary URL.

If there is no tool and the screen needs a scene or an object, say so before the Visuals pass and offer to connect one, like an MCP server for fal, Replicate, OpenAI images or Higgsfield, then go on once it is connected. If the user skips it, leave the slot empty and put the prompt in your report, not on the page. The empty slot is a plain surface step of the exact size with the radius of the layout and no text inside, so nothing unfinished can ship by accident. Tell the user which kind of service can generate it and the file name to save it under.

## Prompt recipe

Build the prompt from these parts, in this order:

- **Subject.** The one sentence, concrete and physical.
- **Setting.** Where it is, kept simple.
- **Light and palette.** Matched to the page. Name the page background color so the edges can blend into it, and the direction of the light.
- **Style.** One clear direction that fits the character, like cinematic photo, soft 3D render, editorial illustration, risograph print or painted background. Pick what fits the product, not what is trending.
- **Composition.** Where the subject sits so the text has room, like "subject on the right half, calm empty space on the left". For a scene behind the whole hero, ask for 16:9 or wider, keep the lower fifth calm too, since the product view rises over it, and fade the edges into the page color in code.
- **Exclusions.** No text, no letters, no logos, no UI, no watermark.
- **Format.** The aspect ratio of the slot at twice the display size.

## Put it on the page

- Export as WebP or AVIF at twice the display size, with a real `alt` that says what is shown.
- Match the image edges to the page background. If they do not match, fade them with a mask, like `mask-image: radial-gradient(closest-side, #000 70%, transparent)`, or a gradient overlay in the page color. A hard rectangle on a page of a different color is a sign of slop.
- Keep it static or give it one slow, subtle motion that fits the subject. No parallax.
- A treatment in code, like a duotone into the page palette, can make a generated image feel native. Use one only when it fits the character, and never as new decoration.
- Load the hero image with high priority and give it fixed dimensions so the layout does not jump.

---

Adapted from unslop by Damir Sokolovsky ([@heydamir](https://x.com/heydamir)), CC BY 4.0: changed the line on AI defaults. Keep this credit in copies and adaptations.

