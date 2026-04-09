# Pi Installer – Local AI for Everyone

A one-command installer that sets up a free, local AI assistant on any Mac. No cloud. No subscription. No data shared.

Built with [pi-coding-agent](https://github.com/mariozechner/pi-coding-agent) by Mario Zechner @badlogic and [Ollama](https://ollama.com).

---

## Why this exists

AI tools are changing how people work, learn, and access information. But most of them require subscriptions, cloud accounts, or technical knowledge to set up. That creates a barrier — especially for people who could benefit most.

This project started from a simple question: **what if someone with no technical background could have a working local AI assistant in under 10 minutes?**

The target audience is people who would never find their way to a GitHub repo. People who don't know what a terminal is. People for whom a monthly Claude or ChatGPT subscription is not an option.

This installer is one piece of that puzzle. The other piece is [GUIDE.md](GUIDE.md) — a plain-language setup guide designed to be shared directly with non-technical users via WhatsApp, email, or printed out.

---

## What it installs

- **Homebrew** – package manager for Mac (if not already installed)
- **Node.js** – required by pi
- **pi-coding-agent** – the terminal AI interface
- **Ollama** – runs AI models locally
- **qwen2.5-coder:7b** – a capable open model (~5GB, downloaded once)
- A basic configuration with filesystem tools

Everything runs locally. No API key required. No data leaves your machine.

---

## Install

Open Terminal and run:

```bash
curl -fsSL https://raw.githubusercontent.com/Brosi1975/pi-for-everyone/main/install.sh | bash
```

That's it.

---

## After installation

Start Pi:
```bash
pi
```

Switch models (including Claude, Gemini, OpenAI):
```
Ctrl+L
```

---

## What's not included (by design)

This installer is intentionally minimal. A more advanced setup exists with:

- A **live activity dashboard** that shows what the AI is doing in real time
- A **token & cost tracking panel** for monitoring API usage
- **Custom themes** for the terminal interface
- A **multi-panel tmux layout** for power users

These were left out of the 1-click installer on purpose. The goal is that someone who has never opened a Terminal can get started without being overwhelmed.

If you are technical and want the full setup, the advanced configuration files are in this repository. Contributions welcome.

---

## Technical notes

- Default model: qwen2.5-coder:7b via Ollama
- Tool execution (read, write, filesystem) currently works reliably with Claude. Ollama model support for tool-use is limited in pi — this is a known upstream issue
- Extensions are placed in ~/.pi/agent/extensions/
- Configuration lives in ~/.pi/agent/settings.json

---

## Roadmap

- [ ] Windows installer
- [ ] Improved Ollama tool-use support (pending upstream)
- [ ] GUI wrapper for non-terminal users
- [ ] Multilingual guides (DE, IT, FR)
- [ ] Advanced tmux layout as optional add-on

---

## Contributing

Pull requests welcome. If you improve the installer or add a language version of the guide, please open a PR.

If you work with communities that could benefit from this — social organizations, libraries, community centers — get in touch.

---

## About

Started by [Daniela Brodesser](https://socialevidence.eu) — ESG consultant, author, and lecturer based in Vienna, Austria.

The social dimension of technology access is part of her broader work on social evidence and structural inequality.

---

*For non-technical users: see [GUIDE.md](GUIDE.md)*
