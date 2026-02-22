#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Claude Code Wrapped..."

# Copy the main script to ~/.claude/
cp "$SCRIPT_DIR/wrapped.py" "$HOME/.claude/wrapped.py"
echo "  ✅ Copied wrapped.py to ~/.claude/wrapped.py"

# Check for Python 3
if ! command -v python3 &>/dev/null; then
  echo "  ⚠️  Python 3 not found — please install it before running /claude-code-wrapped:wrapped"
fi

# Check for optional pptxgenjs
if ! node -e "require('pptxgenjs')" &>/dev/null 2>&1; then
  echo "  ℹ️  Optional: install pptxgenjs for PowerPoint export:"
  echo "       npm install -g pptxgenjs"
fi

echo ""
echo "Done! Two ways to run your Wrapped:"
echo ""
echo "  Option 1 — Claude Code plugin command (after installing the plugin):"
echo "    /claude-code-wrapped:wrapped"
echo ""
echo "  Option 2 — Direct:"
echo "    python3 ~/.claude/wrapped.py"
echo ""
echo "To install the plugin in Claude Code:"
echo "  /plugin install $SCRIPT_DIR"
