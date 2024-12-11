#!/usr/bin/env bash
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

#  
#
# function instalarPacote(){
# if [ ! "$(grep -Rl chrome /etc/apt/sources.list.d)" ]; then
#   echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge-stable.list
#   cd /tmp && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
#   sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
#   cd ..
# fi
# export DEBIAN_FRONTEND="noninteractive"
# apt update -y
# apt install  microsoft-edge-stable -y && {
#   yad --info --modal --borders=32 --fixed --center   --width=350   --button="Ok":0 \
#   --text="O Edge foi instalado com sucesso!"
# } || {
#   yad --error --modal --width=400 --height=100  --borders=32 --fixed --center      --button="Ok":0 \
#   --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
# }
# }
#
# instalarPacote | yad --no-buttons --progress --width=400 --height=100  --borders=32 --fixed --center    \
#   --auto-close --pulsate --progress-text= \
# --text="\nPor favor, aguarde...\n" --title="Instalando o Edge..."
#
# exit

# flatpak-install-gui --override-appname="Microsoft Edge" com.microsoft.Edge
# exit
# ;;
