#!/bin/bash

[ ! "${EUID}" = "0" ] && {
  echo "Execute esse script como root:"
  echo
  echo "  sudo ${0}"
  echo
  exit 1
}

HERE="$(dirname "$(readlink -f "${0}")")"

working_dir=$(mktemp -d)

mkdir -p "${working_dir}/usr/bin/"
mkdir -p "${working_dir}/usr/share/applications/"
mkdir -p "${working_dir}/DEBIAN/"

cp -v "${HERE}/welcome-next"      "${working_dir}/usr/bin/"

chmod +x "${working_dir}/usr/bin/welcome-next"

(
 echo "Package: welcome"
 echo "Priority: optional"
 echo "Version: $(date +%y.%m.%d%H%M%S)"
 echo "Architecture: all"
 echo "Maintainer: Natanael Barbosa Santos"
 echo "Depends: "
 echo "Description: Tela inicial com recursos iterativos"
 echo
) > "${working_dir}/DEBIAN/control"

dpkg -b ${working_dir}
rm -rfv ${working_dir}

mv "${working_dir}.deb" "${HERE}/welcome.deb"

chmod 777 "${HERE}/welcome.deb"
chmod -x  "${HERE}/welcome.deb"


