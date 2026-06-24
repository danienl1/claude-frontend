#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="frontend"
SKILL_DIR="$HOME/.claude/skills/$SKILL_NAME"
REPO_URL="https://github.com/AgriciDaniel/claude-frontend"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOCAL_MODE="false"

if [ "${1:-}" = "--local" ]; then
  LOCAL_MODE="true"
fi

echo "Installing $SKILL_NAME..."

mkdir -p "$SKILL_DIR/references/frameworks"
mkdir -p "$SKILL_DIR/references/validation-recipes"

if [ "$LOCAL_MODE" = "true" ]; then
  SOURCE_DIR="$SCRIPT_DIR"
else
  TEMP_DIR="$(mktemp -d)"
  trap 'rm -rf "$TEMP_DIR"' EXIT

  git clone --depth 1 "$REPO_URL.git" "$TEMP_DIR" || {
    echo "Error: Could not clone repository. Check your internet connection."
    exit 1
  }

  SOURCE_DIR="$TEMP_DIR"
fi

if [ -f "$SOURCE_DIR/checksums.sha256" ]; then
  echo "Verifying file integrity..."
  if command -v shasum >/dev/null 2>&1; then
    CHECKSUM_CMD=(shasum -a 256 -c checksums.sha256 --quiet)
  elif command -v sha256sum >/dev/null 2>&1; then
    CHECKSUM_CMD=(sha256sum -c checksums.sha256 --quiet)
  else
    echo "Error: no SHA-256 checksum tool found."
    exit 1
  fi

  (cd "$SOURCE_DIR" && "${CHECKSUM_CMD[@]}") || {
    echo "Error: Integrity check failed. Files may have been tampered with."
    exit 1
  }
fi

cp "$SOURCE_DIR/skills/$SKILL_NAME/SKILL.md" "$SKILL_DIR/"
cp "$SOURCE_DIR/skills/$SKILL_NAME/references/"*.md "$SKILL_DIR/references/"
cp "$SOURCE_DIR/skills/$SKILL_NAME/references/frameworks/"*.md "$SKILL_DIR/references/frameworks/"
cp "$SOURCE_DIR/skills/$SKILL_NAME/references/validation-recipes/"*.md "$SKILL_DIR/references/validation-recipes/"

echo ""
echo "claude-frontend installed successfully."
echo ""
echo "Usage:"
echo "  /frontend \"Build a polished dashboard\""
echo "  /frontend --mode audit --target http://localhost:3000"
echo "  /frontend --mode validate --target http://localhost:3000"
echo "  /frontend --mode diff"
