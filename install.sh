#!/bin/bash

set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo ""
echo "================================================"
echo "  Willkommen zum Pi KI-Assistenten Installer"
echo "================================================"
echo ""

echo -e "${YELLOW}[1/5] Pruefe Homebrew...${NC}"
if ! command -v brew &>/dev/null; then
    echo "Homebrew wird installiert..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo -e "${GREEN}OK - Homebrew bereits installiert${NC}"
fi

echo ""
echo -e "${YELLOW}[2/5] Pruefe Node.js...${NC}"
if ! command -v node &>/dev/null; then
    brew install node
else
    echo -e "${GREEN}OK - Node.js bereits installiert${NC}"
fi

echo ""
echo -e "${YELLOW}[3/5] Installiere Pi...${NC}"
npm install -g @mariozechner/pi-coding-agent
echo -e "${GREEN}OK - Pi installiert${NC}"

echo ""
echo -e "${YELLOW}[4/5] Installiere Ollama...${NC}"
if ! command -v ollama &>/dev/null; then
    brew install ollama
else
    echo -e "${GREEN}OK - Ollama bereits installiert${NC}"
fi
ollama serve &>/dev/null &
sleep 3
echo "Lade KI-Modell (ca. 5GB, einmalig)..."
ollama pull qwen2.5-coder:7b
echo -e "${GREEN}OK - Modell geladen${NC}"

echo ""
echo -e "${YELLOW}[5/5] Konfiguration...${NC}"
mkdir -p ~/.pi/agent/extensions
mkdir -p ~/.pi/agent/themes

cat > ~/.pi/agent/settings.json << 'EOF'
{
  "provider": "ollama",
  "model": "qwen2.5-coder:7b",
  "logLevel": "medium"
}
EOF

cat > ~/.pi/agent/themes/klassisch.json << 'EOF'
{
  "name": "klassisch"
}
EOF

echo -e "${GREEN}OK - Konfiguration fertig${NC}"

echo ""
echo "================================================"
echo -e "${GREEN}  Installation abgeschlossen!${NC}"
echo "================================================"
echo ""
curl -fsSL https://raw.githubusercontent.com/Brosi1975/pi-for-everyone/main/pi-starter-tmux.sh -o ~/.pi-starter-tmux.sh
chmod +x ~/.pi-starter-tmux.sh
echo "Starte Pi mit:    bash ~/.pi-starter-tmux.sh"
echo "Modell wechseln:  Ctrl+L"
echo ""

