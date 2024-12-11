#!/usr/bin/env bash


PACOTE="MS-365-Electron"
VERSAO="v1.1.0"

ARQUIVO="$PACOTE-$VERSAO-linux-amd64.deb"
URL="https://github.com/agam778/$PACOTE/releases/download/$VERSAO/$ARQUIVO"


export DEBIAN_FRONTEND="noninteractive"


instalarPacote(){
    apt update -y
    wget "$URL"
    apt install "./$ARQUIVO" -y && {
        yad --info --modal --no-cancel --width=400 --height=100 --borders=32 --fixed --center   --button="Ok":0 \
        --text="O Office 365 foi instalado com sucesso!"
    } || {
    yad --error --modal --width=400 --height=100  --borders=32 --fixed --center   --button="Ok":0 \
    --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
    }
}

rm "$ARQUIVO"

instalarPacote | yad --no-buttons --progress --width=400 --height=100  --borders=32 --fixed --center    \
    --auto-close --pulsate --progress-text= \
    --text="\nPor favor, aguarde...\n" --title="Instalando o office 365..."

# Sai do script
exit
