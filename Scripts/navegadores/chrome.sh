
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff 31/10/2020
# Com a ferramenta BigBashView
# Tecnologias utilizadas: bash, html, css, javascript e <3

echo oi

(
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list;
) ; (
  cd /tmp && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && cd ..
) | (
   export DEBIAN_FRONTEND="noninteractive"
   apt update -y 2>&1
) | yad --no-buttons --progress --width=400 --height=100  --borders=32 --fixed --center --auto-close --progress-text= \
        --text="\nPor favor, aguarde...\n" --title="Sincronizando repositórios..." --pulsate ;

# Start the apt install command in the background
apt install -y google-chrome-stable &

# Get the PID of the apt install command
apt_pid=$!

# Display a pulsating progress bar with yad
yad --progress \
    --title="Installing Package" \
    --text="Installing your-package-name, please wait..." \
    --pulsate \
    --auto-close \
    --button="Cancel (Not recommended):0" &

# Get the PID of the yad progress dialog
yad_pid=$!

# Wait for the apt install command to complete
wait $apt_pid

# Kill the yad progress dialog
kill $yad_pid

echo "Installation completed."


#
# function instalarPacote(){
#   if [ ! "$(grep -Rl chrome /etc/apt/sources.list.d)" ]; then
#     echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
#     cd /tmp && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && cd ..
#   fi
#   export DEBIAN_FRONTEND="noninteractive"
#   apt update -y
#   apt install google-chrome-stable -y && {
#     yad --info --modal --borders=32 --fixed --center   --width=350   --button="Ok":0 \
#     --text="O Chrome foi instalado com sucesso!"
#   } || {
#     yad --error --modal --width=400 --height=100  --borders=32 --fixed --center      --button="Ok":0 \
#     --text="Não foi possível concluir a instalação...\nPor favor, tente novamente!"
#   }
# }
#
# instalarPacote | yad --no-buttons --progress --width=400 --height=100  --borders=32 --fixed --center    \
#   --auto-close --pulsate --progress-text= \
# --text="\nPor favor, aguarde...\n" --title="Instalando o Chrome..."

exit
