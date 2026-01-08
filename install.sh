ARCH=$(uname -m)
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi
if [[ "$ARCH" == x86_64* ]]; then
wget https://github.com/ActuallySandPotNoodles/diginum/releases/download/Reease-1.0.0/diginum -O /usr/bin/diginum
wget https://github.com/ActuallySandPotNoodles/diginum/releases/download/Reease-1.0.0/sand-setplat -O /usr/bin/sand-setplat
fi
if [[ "$ARCH" == aarch64* ]]; then
wget https://github.com/ActuallySandPotNoodles/diginum/releases/download/Reease-1.0.0/diginum_aarch64 -O /usr/bin/diginum
wget https://github.com/ActuallySandPotNoodles/diginum/releases/download/Reease-1.0.0/sand-setplat-aarch64 -O /usr/bin/sand-setplat
fi
mkdir /usr/share/sandpotnoodles
sand-setplat --no-override
rm -f /usr/bin/sand-setplat
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/diginum/refs/heads/main/diginum.png -O /usr/share/sandpotnoodles/diginum.png
wget https://github.com/ActuallySandPotNoodles/diginum/blob/main/diginum.desktop -O /usr/share/applications/diginum.desktop
