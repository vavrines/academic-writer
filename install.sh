#!/usr/bin/env bash
# Install the academic-writer skill for Claude Code and/or Codex (and any
# agent reading ~/.agents/skills). Creates symlinks so updates via
# `git pull` take effect immediately.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_SRC="$REPO_DIR/skills/academic-writer"

if [[ ! -f "$SKILL_SRC/SKILL.md" ]]; then
  echo "error: $SKILL_SRC/SKILL.md not found — run this script from inside the repo." >&2
  exit 1
fi

install_for() {
  local name="$1" dir="$2"
  mkdir -p "$dir"
  local dest="$dir/academic-writer"
  if [[ -e "$dest" && ! -L "$dest" ]]; then
    echo "skip: $dest exists and is not a symlink — remove it manually if you want to replace it."
    return
  fi
  ln -sfn "$SKILL_SRC" "$dest"
  echo "installed: $dest -> $SKILL_SRC"
}

TARGETS=()
if [[ $# -eq 0 ]]; then
  TARGETS=(claude codex agents)
else
  TARGETS=("$@")
fi

for t in "${TARGETS[@]}"; do
  case "$t" in
    claude) install_for "Claude Code" "$HOME/.claude/skills" ;;
    codex)  install_for "Codex" "$HOME/.codex/skills" ;;
    agents) install_for "generic agents" "$HOME/.agents/skills" ;;
    *) echo "unknown target: $t (valid: claude, codex, agents)" >&2; exit 1 ;;
  esac
done

echo
echo "Done. Restart your agent (or start a new session) to pick up the skill."
