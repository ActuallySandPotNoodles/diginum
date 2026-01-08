if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi
if [[ "$ARCH" == x86_64*]]; then
wget [GITHUB] -O /usr/bin/diginum
wget [SETPLAT] -O /usr/bin/sand-setplat
fi
if [[ "$ARCH" == aarch64*]]; then
wget [GITHUB] -O /usr/bin/diginum
wget [SETPLAT] -O /usr/bin/sand-setplat
fi
sand-setplat --no-override
rm -f /usr/bin/sand-setplat
wget [ICON] -O /usr/share/sandpotnoodles/diginum.png
wget [desktop-file] -O /usr/share/applications/diginum.desktop

