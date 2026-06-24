#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="frontend"
SKILL_DIR="$HOME/.claude/skills/$SKILL_NAME"

if [ -d "$SKILL_DIR" ]; then
  rm -rf "$SKILL_DIR"
  echo "frontend uninstalled successfully."
else
  echo "frontend is not installed at $SKILL_DIR"
fi
