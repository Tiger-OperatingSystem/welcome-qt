
url="https://www.microsoft365.com/launch/word?auth=1"
fname="msword-365"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft Office Word 365
Exec=/usr/local/bin/${fname}
Categories=Office;
StartupWMClass=${url}
Icon=/usr/share/tiger-resources/word.png" > /usr/share/applications/${fname}.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}


url="https://www.microsoft365.com/launch/excel?auth=1"
fname="msexcel-365"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft Office Excel 365
Exec=/usr/local/bin/${fname}
Categories=Office;
StartupWMClass=${url}
Icon=/usr/share/tiger-resources/excel.png" > /usr/share/applications/${fname}.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}


url="https://www.microsoft365.com/launch/powerpoint?auth=1"
fname="mspowerpoint-365"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft Office PowerPoint 365
Exec=/usr/local/bin/${fname}
Categories=Office;
StartupWMClass=${url}
Icon=/usr/share/tiger-resources/powerpoint.png" > /usr/share/applications/${fname}.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}

