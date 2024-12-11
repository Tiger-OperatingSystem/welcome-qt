#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

 

function instalarPacote(){
  if [ ! "$(grep -Rl brave /etc/apt/sources.list.d)" ]; then
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  fi
  export DEBIAN_FRONTEND="noninteractive"
  apt update -y
  apt install brave-browser -y && {
    yad --info --modal --borders=32 --fixed --center   --width=350   --button="Ok":0 \
    --text="O Brave foi instalado com sucesso!"
  } || {
    yad --error --modal --width=400 --height=100  --borders=32 --fixed --center      --button="Ok":0 \
    --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
  }
}

instalarPacote | yad --no-buttons --progress --width=400 --height=100  --borders=32 --fixed --center    \
  --auto-close --pulsate --progress-text= \
--text="\nPor favor, aguarde...\n" --title="Instalando o Brave..."

exit
