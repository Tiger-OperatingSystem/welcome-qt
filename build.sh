#!/bin/bash

# Verifica se o script está sendo executado como root
[ ! "${EUID}" = "0" ] && {
  echo "Execute esse script como root:"
  echo
  echo "  sudo ${0}"
  echo
  exit 1
}

# Instala as dependências necessárias para compilar o projeto
apt update
apt install qt6-base-dev build-essential libqt6svg6-dev -y

# Diretório do script atual
HERE="$(dirname "$(readlink -f "${0}")")"

# Compila o projeto
qmake6
make

# Cria um diretório temporário de trabalho
working_dir=$(mktemp -d)

# Cria a estrutura do pacote
mkdir -p "${working_dir}/usr/bin/"
mkdir -p "${working_dir}/usr/share/applications/"
mkdir -p "${working_dir}/etc/skel/.config/autostart"
mkdir -p "${working_dir}/usr/share/pixmaps/"
mkdir -p "${working_dir}/DEBIAN/"

# Copia os arquivos necessários
cp -v "${HERE}/welcome-next"          "${working_dir}/usr/bin/"
cp -v "${HERE}/tiger-welcome.desktop" "${working_dir}/usr/share/applications/"
cp -v "${HERE}/tiger-welcome.desktop" "${working_dir}/etc/skel/.config/autostart"
cp -v "${HERE}/Imgs/Logos/logo.png"   "${working_dir}/usr/share/pixmaps/tiger-welcome.png"

# Ajusta permissões
chmod +x "${working_dir}/usr/bin/welcome-next"

# Cria o arquivo de controle do pacote
cat <<EOF > "${working_dir}/DEBIAN/control"
Package: welcome
Priority: optional
Version: $(date +%y.%m.%d%H%M%S)
Architecture: all
Maintainer: Natanael Barbosa Santos
Depends: 
Description: Tela inicial com recursos iterativos
EOF

# Cria os arquivos necessários
cd "${working_dir}" || exit 1

# Cria debian-binary
echo "2.0" > debian-binary

# Compacta o conteúdo do diretório DEBIAN/ (não o diretório em si)
tar --xz -cf control.tar.xz -C DEBIAN .

# Compacta os arquivos do pacote (usr/ e etc/)
tar --xz -cf data.tar.xz usr etc

# Monta o pacote .deb
ar rcs "${HERE}/welcome.deb" debian-binary control.tar.xz data.tar.xz

# Limpa os arquivos temporários
cd "${HERE}" || exit 1
rm -rfv "${working_dir}"

# Ajusta permissões do pacote final
chmod 777 "${HERE}/welcome.deb"
chmod -x  "${HERE}/welcome.deb"
