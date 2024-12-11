
url="https://app.leonardo.ai/"
fname="leonardo-ai"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Leonardo.AI
Exec=/usr/local/bin/${fname}
Categories=Utility;
StartupWMClass=${url}
Icon=/usr/share/tiger-resources/leonardo-ai.svg" > /usr/share/applications/${fname}.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}
