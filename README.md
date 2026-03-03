# ✦ Claude Code Wrapped

> A Spotify Wrapped-style year-in-review for your [Claude Code](https://claude.ai/claude-code) sessions.

Run one command. Get a beautiful, interactive recap of every project you built, every message you sent, and every late-night debugging session you survived — all from the conversation history Claude Code already keeps on your machine.

---
![HBy-eD_a0AAZwnS](https://github.com/user-attachments/assets/5b51b16e-5d34-40bc-9e65-11be4aa27979)

## What it looks like

10 animated story cards, each revealing a different slice of your coding year:

| Card | What you'll see |
|------|----------------|
| 🟥 **Intro** | Your year in code |
| 🟧 **Projects** | How many projects you juggled |
| 🟪 **Top Project** | The one that had your whole heart — ranked leaderboard |
| 🟦 **Messages** | Total messages sent + Claude's replies |
| 🟩 **Top Tools** | Bar chart of your most-used tools (Read, Bash, Edit…) |
| 🟨 **Timeline** | First session → latest session + busiest day |
| 🩷 **Peak Hour** | 24-hour histogram + your coding personality (Night Owl, Early Bird…) |
| 🟣 **By the Numbers** | Characters typed, longest session, streak, avg session depth |
| 🩵 **Session Names** | The poetic codenames Claude gave each conversation |
| ⬛ **Outro** | Full summary stats |

---

## Quickstart

```bash
# 1. Clone or download
git clone https://github.com/akshsgaur/claude-code-wrapped.git
cd claude-code-wrapped

# 2. Run (no dependencies beyond Python 3.9+)
python3 wrapped.py
```

That's it. Your Wrapped opens automatically in the browser.

---

## Requirements

- **Python 3.9+** — uses only the standard library (no `pip install` needed)
- **Claude Code** — must have at least one session recorded in `~/.claude/projects`
- Works on **macOS**, **Linux**, and **Windows**

---

## Usage

```bash
# Use default ~/.claude/projects
python3 wrapped.py

# Point to a custom projects folder
python3 wrapped.py /path/to/.claude/projects

# Add your own background music (MP3, OGG, or WAV)
python3 wrapped.py --audio ~/Music/my-song.mp3

# Generate the HTML without opening the browser
python3 wrapped.py --no-browser
```

Output is saved to `~/claude_wrapped.html`.

---

## Features

- **Zero dependencies** — pure Python stdlib + vanilla JS/CSS, no npm, no pip
- **Self-contained output** — the generated HTML file embeds everything (including audio) as a single portable file
- **Cross-platform** — works wherever Claude Code works
- **Spotify Wrapped aesthetic** — bright solid backgrounds, organic generative SVG art, story progress bar, left-aligned bold typography
- **Animated splash screen** — floating stat chips, morphing gradient blobs, pulsing start button
- **Background music** — bring your own MP3, or use the built-in ambient synth (Web Audio API)
- **Confetti** — because you shipped things and that deserves confetti
- **Keyboard navigation** — ↑ ↓ / Page Up / Page Down to move between cards

---

## How it works

Claude Code writes a `.jsonl` file for every session into `~/.claude/projects/`. Each line is a JSON object — a user message, an assistant reply, a tool call, a timestamp.

`wrapped.py` scans all of those files and extracts:

- Message counts (yours + Claude's)
- Tool usage (`Read`, `Bash`, `Edit`, `Grep`, `Write`…)
- Timestamps → peak hour, busiest day, coding streak, timeline
- Session metadata → project names, codenames (slugs), git branches
- Message content → total characters typed

It then injects all of that as a JSON blob into a self-contained HTML template. No data ever leaves your machine.

---

## Privacy

All data is **local-only**. The script reads files from your disk and writes a single HTML file to your home directory. Nothing is sent to any server. The generated HTML file works fully offline (except for loading the Google Fonts stylesheet, which is optional).

---

## Customisation

| What | How |
|------|-----|
| Change the output path | Edit `output` in `main()` |
| Add / remove cards | Edit the `CARDS` array in the HTML template |
| Change card colours | Edit the `SCHEMES` array |
| Swap the default music | Replace `DEFAULT_AUDIO_SRC` with your own base64-encoded audio |
| Embed your own music permanently | `python3 -c "import base64; print(base64.b64encode(open('song.mp3','rb').read()).decode())"` → paste into `DEFAULT_AUDIO_SRC` |

---

## Built with

- **Python 3** — data parsing & HTML generation
- **Vanilla JS** — card rendering, confetti, audio, navigation
- **Web Audio API** — synthesised ambient fallback music
- **SVG** — procedurally generated organic shapes per card
- **CSS scroll-snap** — smooth story-style card transitions

---

## License

MIT — do whatever you want with it.

---

*Made with Claude Code, for Claude Code users.*
