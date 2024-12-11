
#
#
# WELCOME PARA O TIGER OS
#
# Desenvolvido por eltonff, Charles Santana e Natanael 31/10/2020-14/04/2023
# Originalmente com a ferramenta BigBashView e agora com Qt
# Tecnologias utilizadas: bash, html, css, javascript (antes), Qt (agora) e <3

# %app-data

(
  echo "$repository_url" > /etc/apt/sources.list.d/repository_file.list;
)

(
  mkdir -p "/etc/trusted_repository_keys"
  wget -q -O "/etc/trusted_repository_keys/$repository_apt_key_file" "$repository_apt_key_url"
)

(
   export DEBIAN_FRONTEND="noninteractive"
   apt update -y 2>&1
) | yad --no-buttons --progress --width=400 --height=100  --borders=32 --fixed --center --auto-close --progress-text= \
        --text="\nPor favor, aguarde...\n" --title="Sincronizando repositórios..." --pulsate ;

qapt-batch --install ${package}
