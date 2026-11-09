---
name: motion-feedback
description: Adds meaningful motion and feedback so an app feels alive. Use when buttons feel silent, numbers change abruptly, or screens feel static and AI-made.
---

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
