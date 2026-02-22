Generate a Spotify Wrapped-style year-in-review of your Claude Code usage.

Find the wrapped.py script — check these locations in order:
1. `~/.claude/wrapped.py`
2. The directory where this plugin is installed

Run the script:

```bash
python3 ~/.claude/wrapped.py
```

If the script is not found at `~/.claude/wrapped.py`, tell the user to run the install script first:

```bash
cd <path-to-clone> && ./install.sh
```

After the script completes, tell the user:
- The path to the generated HTML file (suggest they open it in a browser)
- Whether a PPTX was also generated at `~/claude_wrapped.pptx`
- Highlight 2-3 interesting stats from the console output (top project, peak hour, persona, streak, etc.)
