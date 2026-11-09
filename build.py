"""Generate non-SKILL.md formats from the 0*/SKILL.md sources."""
import re, pathlib
root = pathlib.Path(__file__).parent
dist = root / "dist"; (dist / "cursor-rules").mkdir(parents=True, exist_ok=True)
combined = ["# Design Skills Pack\n\nUX/UI design rules (anti-AI-slop). For any design task, start with design-master and do not begin designing until the user has confirmed a Style Lock.\n"]
for d in sorted(root.glob("0*/")):
    t = (d / "SKILL.md").read_text(encoding="utf8")
    m = re.match(r"---\n(.*?)\n---\n(.*)", t, re.S)
    meta = dict(l.split(": ", 1) for l in m.group(1).splitlines() if ": " in l)
    body = m.group(2).strip()
    combined.append(f"\n\n---\n\n## SKILL: {meta['name']}\n> {meta['description']}\n\n{body}\n")
    # Cursor rule: agent-requestable by description
    (dist / "cursor-rules" / f"{d.name}.mdc").write_text(
        f"---\ndescription: {meta['description']}\nalwaysApply: false\n---\n\n{body}\n", encoding="utf8")
(dist / "AGENTS.md").write_text("".join(combined), encoding="utf8")
print("ok")
