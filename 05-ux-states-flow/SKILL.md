---
name: ux-states-flow
description: Designs complete flows and states, not just the happy-path screen. Use for forms, login, OTP, checkout, or any AI screen with loading.
---

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
