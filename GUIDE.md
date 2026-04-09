# Your AI Assistant – Quick Guide

*Print it out or share it.*

---

## Installation (once only)

1. Press **Command (⌘) + Space**
2. Type: `Terminal` then press **Enter**
3. Copy this text and paste it into the Terminal:

```
curl -fsSL https://raw.githubusercontent.com/Brosi1975/pi-for-everyone/main/install.sh | bash
```

4. Press **Enter** and wait until you see "Installation abgeschlossen!" (Installation complete!)
5. Type `bash ~/.pi-starter-tmux.sh` and press **Enter** – your assistant starts

*The first installation takes 10–20 minutes. After that, Pi starts in seconds.*

---

## Starting every day

1. **Command + Space** → type `Terminal` → **Enter**
2. Type: `bash ~/.pi-starter-tmux.sh` → **Enter**
3. Done – you can start talking

---

## How to use Pi

Just type what you need – like a text message. For example:

- Explain what this contract clause means
- Help me write a job application
- What does this word mean: ...
- Translate this to English: ...
- Show me the files in my Documents folder

Press **Enter** to send. Pi will respond.

---

## Most useful keyboard shortcuts

| What you want | What to press |
|---|---|
| Stop the response | Ctrl + C |
| Switch AI model | Ctrl + L |
| Exit Pi | Ctrl + D |
| New Terminal tab | Command + T |

*Ctrl = the key in the bottom left corner labeled "control" or "ctrl"*

---

## Closing Pi and coming back later

**To close Pi:**
- Press Ctrl + D
- Or simply close the Terminal window

**To open it again:**
- Open Terminal
- Type `bash ~/.pi-starter-tmux.sh` → Enter
- Pi starts fresh

*Pi does not remember previous conversations automatically. Each session is a fresh start.*

---

## Switching AI models

| Model | Cost | Quality |
|---|---|---|
| Ollama (default) | Free | Good for everyday tasks |
| Claude | Subscription needed | Excellent |
| Gemini | Free (Google) | Excellent |

How to switch:
1. Press Ctrl + L
2. Use the arrow keys to select a model
3. Press Enter

---

## If something doesn't work

**Pi is not responding:**
Press Ctrl + C to stop – then type again

**Pi won't start:**
Close the Terminal window – open a new one – type `bash ~/.pi-starter-tmux.sh`

**Ollama is not running:**
Type: `ollama serve` – wait 5 seconds – open a new tab (Command + T) – type `bash ~/.pi-starter-tmux.sh`

**Nothing works:**
Restart your Mac – open Terminal – type `bash ~/.pi-starter-tmux.sh`

---

## Frequently asked questions

**Are my questions stored or shared?**
No. Everything runs locally on your Mac. Nothing is sent to the internet (unless you switch to Claude or Gemini).

**Does it cost anything?**
The basic installation is free. You only need an account if you choose to use Claude or Gemini.

**Can I install Pi on multiple Macs?**
Yes – just run the same installation command on the other Mac.

**Does Pi work on Windows?**
Not yet – a Windows version is in progress.

---

*Project: github.com/Brosi1975/pi-for-everyone*
*Problems? Open an issue there or ask someone who can help.*
