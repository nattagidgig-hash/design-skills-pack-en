# Design Skills Pack (9 skills) - English edition

Agent skills for professional UX/UI design that avoids "AI slop". Based on the ideas in Charles Liu's *Removing AI Slop* series (Instagram: charles.unemployed).
The core rule of every skill: **ask the requester about their style first, never guess**, until they reply **"locked"**. Only then start designing, and loop until the QA checklist passes.

> **Unofficial.** This pack is an independent summary of public content by Charles Liu and is not affiliated with or endorsed by him. His own skill is called `charles-unslop`. Please check out and credit his original work.
> Thai version: https://github.com/nattagidgig-hash/design-skills-pack (private)

## Quick start
Tell your AI:

> Use design-master to improve this login page. Start by asking me about my style until it's locked, then begin.

The AI asks 7 things: the product, mood, 3 references you like and 1 you dislike, banned colors/fonts, users and devices, the one key action, and constraints.
If you answer "up to you", the skill forces the AI to propose 3 style sets (A/B/C) instead of choosing silently.

## Workflow

```
01 design-brief      lock the style (Style Lock)     <- must hear "locked" before going on
02 unslop-audit      audit slop, score X/20
03 visual-hierarchy  set the eye path
04 typography-color  type + color system
05 ux-states-flow    flows + complete states
06 product-copy      specific copy
07 motion-feedback   meaningful motion
08 craft-polish      finishing + QA before delivery
```

`00 design-master` runs this order; no skipping, and no motion before hierarchy is settled.
Each round reports **Before / After / Why**. If the done-criteria are not met, it asks what to fix next instead of declaring itself finished.

## The skills

### 00 design-master (orchestrator)
- **Does:** controls the order of all work, calls the sub-skills, decides whether work is done.
- **Trigger:** "design this / improve this design / unslop this page".
- **Principle:** "Don't just stop when it works." Keep going until it feels expensive and has one clear idea.
- **Done when:** one core idea, hierarchy clear in 3 seconds, no unjustified slop, all states present, meaningful motion, specific copy, and the requester says "locked".

### 01 design-brief
- **Does:** turns "make it pretty / professional" into a measurable spec.
- **Three question sets:** product / style / constraints. Style questions are multiple choice: mood (Premium, Playful, Calm, Bold, Luxury, Friendly, Futuristic, Editorial, Minimal, Skeuomorphic), density, color, fonts, shape, motion.
- **Output:** a **Style Lock** (Product, One Idea, Mood, Color, Type, Radius/Shadow, Motion, One CTA, Do-not list), then waits for "locked".
- **Golden rules:** if the requester changes their mind, update the Style Lock and list what must change; every later decision must trace back to it.

### 02 unslop-audit
- **Does:** audits AI-generated UI for what looks unconsidered and ranks what to fix first.
- **Slop defined:** every trend applied at once with no core idea and no reason.
- **The 20 indicators:** tags/pills everywhere, too much italic, Instrument Serif without reason, negative kerning, over-detailed UI, too many dividers, haphazard gradients/opacity, borders on every box, over-detailed diagrams, wordy text, code breadcrumbs, 01/02/03 section numbers, eyebrow text, dithering/noise, ASCII/squiggles, mono everywhere, ALL CAPS subtitles, purple AI gradient, needless full stops, filler badges (NEW / AI-Powered).
- **Rule:** one element is not slop; five or more together without a reason is.
- **Report:** Slop Score X/20, top 3 fixes, what to keep.
- **Won't fix immediately:** asks first what is intentional brand identity, what feels "not us", and which 3 things to remove if only 3 could go.

### 03 visual-hierarchy
- **Does:** lets a viewer know in 3 seconds what to look at first.
- **Principles:** 1 screen = 1 hero + 1 primary CTA; if everything is emphasized nothing is; big = important, close = related, space = breathing room.
- **Steps:** find the key action, make it the largest/clearest, reduce everything else one level, group with spacing instead of boxes.
- **Rules:** remove filler badges and duplicate labels, specific headlines, clearly dominant primary CTA, show the real product, enlarge the main feature, align by eye.
- **Check:** CTA findable from 1 meter; no two elements competing at the same level.

### 04 typography-color
- **Does:** a system instead of random choices.
- **Type:** one primary + one secondary font; mono only for numbers/code/time/IDs; no random italics or long ALL CAPS; tabular numbers; well-wrapped headlines; no harmful negative kerning.
- **Color:** one primary, one accent, one or two backgrounds; no default purple gradient unless justified (a gradient must mean something); check contrast; scene-colored shadows instead of pure black.
- **Output:** Color Tokens (Primary/Accent/Background/Surface/Text Primary/Text Secondary) and a Type Scale (H1/H2/Body/Caption), with usage examples; confirm they match the Style Lock.

### 05 ux-states-flow
- **Does:** designs for when things break, not only the success screen.
- **Seven required states:** Default, Loading/Streaming, Success, Error, Empty, Disabled, Focus/Active. Missing ones go to the requester, not to AI guesswork.
- **Patterns:** OTP (auto-submit, SMS autofill, per-digit feedback, Verified state, always keep Resend), Login (1 title + 1 CTA), AI chat (show what it's doing, cite sources, reserve space to avoid layout shift).
- **Never remove** Resend / Retry / Back for looks.

### 06 product-copy
- **Does:** say it clearly instead of sounding smart.
- **Rules:** headlines say what, for whom, what you get, how it's measured ("Cited answers from papers" beats "Agents that survive production"); drop Revolutionary / Seamless / Unlock / Elevate / Supercharge / AI-Powered without evidence; show real content (the real 12-week plan, a real SFO to JFK ticket); button labels state outcomes ("Add 36 runs to your calendar" beats "Submit"); short, well-timed help text.
- **Output:** Before / After for each key string with reasons.

### 07 motion-feedback
- **Does:** motion that tells users what is happening.
- **Techniques:** wheel-style age picker (snapping, momentum, blur, haptic-like), like button (optimistic update, rolling count, overshoot, double-tap, light particles), OTP per-state feedback, shared-element transitions (login card to boarding pass).
- **Rules:** every animation must say something; micro-interactions 150-250ms, transitions 300-400ms; optimistic updates over spinners; reserve space to prevent layout shift; physical feel; ask about Reduce Motion.

### 08 craft-polish
- **Does:** the final pass for details that make work feel expensive.
- **Checklist:** inner radius = outer radius - padding, layered scene-colored shadows, 4/8pt spacing, tabular numbers, clean headline wraps, contrast, consistent icon style and stroke, logo micro-interaction, product-relevant backgrounds, skeuomorphism only when it speeds understanding.
- **Closing questions:** does it feel more expensive on a real phone, where does it still feel AI-made, plainer or more personality, lock or make a version B.
- If it fails, loop back to the relevant skill; never force delivery.

## Companion files
- `STYLE-BRIEF-TEMPLATE.md` - Style Lock form
- `FINAL-QA-CHECKLIST.md` - 15-point pre-delivery checklist

## Install

Automatic:
- macOS/Linux: `./install.sh` (or `./install.sh claude`)
- Windows: `.\install.ps1` (or `-Target codex`)

Default `all` installs only for tools whose home folder already exists.

### Tools that use SKILL.md
| Tool | User-level folder |
|---|---|
| Claude Code | `~/.claude/skills/` (project: `.claude/skills/`) |
| Codex CLI | `~/.codex/skills/` (or `~/.agents/skills/`) |
| Antigravity | `~/.gemini/antigravity/skills/` (project: `.agent/skills/`) |
| Gemini CLI | `~/.gemini/skills/` |
| Hermes | `~/.hermes/skills/creative/` (Windows: `%LOCALAPPDATA%\hermes\skills\creative`) |

Folder paths are based on each tool's default layout; check your tool's docs if a skill doesn't load.

### Tools without SKILL.md support
- Single file `dist/AGENTS.md`: place as `AGENTS.md` in your project (Codex, Cursor, Copilot, Windsurf, etc.) or paste into a web chat.
- Cursor: copy `dist/cursor-rules/*.mdc` to `.cursor/rules/`.

Edit `0*/SKILL.md`, then run `python build.py` to regenerate `dist/`.

## Contributing
Issues and PRs welcome, especially: verified install paths for more tools, better wording, and real before/after examples.

## License
MIT
