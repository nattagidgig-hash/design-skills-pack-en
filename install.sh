#!/usr/bin/env bash
# Usage: ./install.sh [claude|codex|antigravity|hermes|gemini|agents|all]   (default: all detected)
set -e
cd "$(dirname "$0")"
declare -A T=(
 [claude]="$HOME/.claude/skills"
 [codex]="$HOME/.codex/skills"
 [antigravity]="$HOME/.gemini/antigravity/skills"
 [gemini]="$HOME/.gemini/skills"
 [hermes]="$HOME/.hermes/skills/creative"
 [agents]="$HOME/.agents/skills"
)
want="${1:-all}"
for k in "${!T[@]}"; do
  dest="${T[$k]}"
  if [ "$want" = all ]; then
    # only install where the tool's home dir already exists
    parent="$(dirname "$dest")"; [ "$k" = hermes ] && parent="$HOME/.hermes"
    [ -d "$parent" ] || continue
  elif [ "$want" != "$k" ]; then continue; fi
  mkdir -p "$dest"
  for d in 0*/; do rm -rf "$dest/${d%/}"; cp -R "$d" "$dest/${d%/}"; done
  echo "installed -> $dest"
done
