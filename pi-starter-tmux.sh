#!/bin/bash

DIR=${1:-$(pwd)}

setup_help_panel() {
cat > /tmp/pi-hilfe.txt << 'HILFE'
╔════════════════════════════════╗
║     Dein KI-Assistent          ║
╚════════════════════════════════╝

── MODELL ──────────────────────
  Ollama (lokal, kostenlos)

── TASTENKÜRZEL ────────────────
  Ctrl+L    Modell wechseln
  Ctrl+C    Antwort stoppen
  Ctrl+D    Pi beenden

── BEISPIELFRAGEN ──────────────
  "Erklaere mir diesen Begriff: ..."
  "Hilf mir eine E-Mail schreiben"
  "Zeige die Dateien in meinem Ordner"
  "Uebersetz diesen Text auf Englisch"

── TIPPS ───────────────────────
  Schreib einfach drauflos
  Deutsch, Englisch, alles geht
  Du kannst nicht viel falsch machen

── MODELL WECHSELN ─────────────
  Druecke Ctrl+L und waehle:
  ollama  kostenlos, lokal
  claude  besser, Abo noetig
  gemini  kostenlos (Google)

────────────────────────────────
  github.com/Brosi1975
────────────────────────────────
HILFE
}

setup_help_panel

if ! command -v tmux &>/dev/null; then
    brew install tmux
fi

SESSION="pi-starter"
tmux kill-session -t $SESSION 2>/dev/null || true
tmux new-session -d -s $SESSION -x 220 -y 50
tmux send-keys -t $SESSION "cd '$DIR' && pi" Enter
tmux split-window -t $SESSION -h -p 30
tmux send-keys -t $SESSION "watch -n 5 'cat /tmp/pi-hilfe.txt'" Enter
tmux select-pane -t $SESSION:0.0
tmux attach-session -t $SESSION
