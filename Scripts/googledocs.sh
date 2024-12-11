url="https://docs.google.com/document/u/0/"
fname="gdocs"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Documentos
Exec=/usr/local/bin/${fname}
Categories=Office;
Icon=/usr/share/tiger-resources/docs.png" > /usr/share/applications/gdocs.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}

url="https://docs.google.com/spreadsheets/u/0/"
fname="gsheets"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Planilhas
Exec=/usr/local/bin/${fname}
Categories=Office;
Icon=/usr/share/tiger-resources/sheets.png" > /usr/share/applications/gsheets.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}

url="https://docs.google.com/presentation/u/0/"
fname="gslides"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Apresentações
Exec=/usr/local/bin/${fname}
Categories=Office;
Icon=/usr/share/tiger-resources/slides.png" > /usr/share/applications/gslides.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}

url="https://docs.google.com/forms/u/0/"
fname="gforms"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Formulários
Exec=/usr/local/bin/${fname}
Categories=Office;
Icon=/usr/share/tiger-resources/gforms.png" > /usr/share/applications/gforms.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}

url="https://keep.google.com/"
fname="gkeep"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Keep
Exec=/usr/local/bin/${fname}
Categories=Office;
Icon=/usr/share/tiger-resources/gkeep.png" > /usr/share/applications/gkeep.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}

url="https://calendar.google.com/calendar/u/0/r?pli=1"
fname="gagenda"
echo "#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Google Agenda
Exec=/usr/local/bin/${fname}
Categories=Office;
Icon=/usr/share/tiger-resources/gAgenda.png" > /usr/share/applications/gagenda.desktop

mkdir -p /usr/local/bin/
echo "#!/usr/bin/env bash
webapp-player ${url}
" > /usr/local/bin/${fname}
chmod +x /usr/local/bin/${fname}

