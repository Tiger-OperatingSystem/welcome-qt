#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

 

function instalarPacote(){
  export DEBIAN_FRONTEND="noninteractive"
  apt update -y
  apt install firefox firefox-locale-pt firefox-locale-en -y && {
    yad --info --modal --borders=32 --fixed --center   --width=350   --button="Ok":0 \
    --text="O Firefox foi instalado com sucesso!"
  } || {
    yad --error --modal --width=400 --height=100  --borders=32 --fixed --center      --button="Ok":0 \
    --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
  }
}

instalarPacote | yad --no-buttons --progress --width=400 --height=100  --borders=32 --fixed --center    \
  --auto-close --pulsate --progress-text= \
--text="\nPor favor, aguarde...\n" --title="Instalando o Firefox..."

exit
