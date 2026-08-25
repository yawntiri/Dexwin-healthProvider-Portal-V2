#!/bin/zsh
set -euo pipefail

REPO_DIR="/Users/kelvinntiri/Documents/Dexwin Projects/HR Prototype Repo/Dexwin Health Provider V2/canvas-source"
LOG_DIR="$REPO_DIR/.sync-logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/$(date +%Y-%m-%d_%H-%M-%S).log"

cd "$REPO_DIR"

CLAUDE_BIN="$HOME/.local/bin/claude"

"$CLAUDE_BIN" -p "$(cat "$REPO_DIR/scripts/sync-prompt.txt")" \
  --allowedTools "Bash Read Write Edit Glob Grep WebFetch Skill" \
  >> "$LOG_FILE" 2>&1

echo "---- sync run finished: $(date) ----" >> "$LOG_FILE"
