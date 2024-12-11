#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Fork Charles Santana 27/07/2023
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

#MSWord

WEBAPP_TARGET="${HOME}/.local/share"

mkdir -p "${WEBAPP_TARGET}/bin"
mkdir -p "${WEBAPP_TARGET}/applications"


cat > "${WEBAPP_TARGET}/bin/msword" <<EOF
#!/usr/bin/env sh

webapp-player "https://office.live.com/start/Word.aspx"
EOF

chmod +x "${WEBAPP_TARGET}/bin/msword"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft Word Online
Exec=webapp-player https://office.live.com/start/Word.aspx
Categories=Office;
Icon=/opt/welcome-tiger/Welcome.Imgs/WebApps/word.png" > /tmp/msword.desktop

cp -f /tmp/msword.desktop "${WEBAPP_TARGET}/applications"
rm /tmp/msword.desktop

#MSExcel
cat > "${WEBAPP_TARGET}/bin/msexcel" <<EOF
#!/usr/bin/env sh

webapp-player "https://office.live.com/start/Excel.aspx"

EOF

chmod +x "${WEBAPP_TARGET}/bin/msexcel"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft Excel Online
Exec=webapp-player https://office.live.com/start/Excel.aspx
Categories=Office;
Icon=/opt/welcome-tiger/Welcome.Imgs/WebApps/excel.png" > /tmp/msexcel.desktop

cp -f /tmp/msexcel.desktop "${WEBAPP_TARGET}/applications"
rm /tmp/msexcel.desktop

#MSPowerPoint
cat > "${WEBAPP_TARGET}/bin/mspowerpoint" <<EOF
#!/usr/bin/env sh

webapp-player "https://office.live.com/start/PowerPoint.aspx"
EOF

chmod +x "${WEBAPP_TARGET}/bin/mspowerpoint"

echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Microsoft PowerPoint Online
Exec=webapp-player https://office.live.com/start/PowerPoint.aspx
Categories=Office;
Icon=/opt/welcome-tiger/Welcome.Imgs/WebApps/powerpoint.png" > /tmp/mspowerpoint.desktop

cp -f /tmp/mspowerpoint.desktop "${WEBAPP_TARGET}/applications"
rm /tmp/mspowerpoint.desktop

yad --info --borders=32 --fixed --center   --text="O Office 365 foi instalado com sucesso! \n" --modal   --width=380 --button="Ok":0 --borders=32 --fixed --center   

exit
