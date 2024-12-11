#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Fork Charles Santana 27/07/2023
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

 
lang_cut="${LANG%.*}"
lang_lower="${lang_cut,,}"
lang="${lang_lower/_/-}"
function instalarPacote(){
  export DEBIAN_FRONTEND="noninteractive"
  apt update -y
  apt install libreoffice libreoffice-l10n-"$lang" -y && {
    yad --info --modal --no-cancel --width=400 --height=100 --borders=32 --fixed --center   --button="Ok":0 \
    --text="O LibreOffice foi instalado com sucesso!"
  } || {
    yad --error --modal --width=400 --height=100  --borders=32 --fixed --center   --button="Ok":0 \
    --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
  }
}

instalarPacote | yad --no-buttons --progress --width=400 --height=100  --borders=32 --fixed --center    \
  --auto-close --pulsate --progress-text= \
--text="\nPor favor, aguarde...\n" --title="Instalando o LibreOffice..."

exit
