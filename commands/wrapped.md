Generate a Spotify Wrapped-style year-in-review of your Claude Code usage.

Find and run the wrapped.py script with this shell command:

```bash
WRAPPED=$(find ~/.claude/plugins -name 'wrapped.py' 2>/dev/null | head -1); \
[ -z "$WRAPPED" ] && WRAPPED="$HOME/.claude/wrapped.py"; \
python3 "$WRAPPED"
```

After the script completes, tell the user:
- The path to the generated HTML file (suggest they open it in a browser)
- Whether a PPTX was also generated at `~/claude_wrapped.pptx`
- Highlight 2-3 interesting stats from the console output (top project, peak hour, persona, streak, etc.)
