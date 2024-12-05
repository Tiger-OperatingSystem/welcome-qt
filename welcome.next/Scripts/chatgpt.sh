url="https://chatgpt.com/"
fname="chatgpt"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=ChatGPT
Exec=/usr/local/bin/${fname}
Categories=Utility;
StartupWMClass=${url}
Icon=/usr/share/tiger-resources/chatgpt.png" > /usr/share/applications/${fname}.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}
