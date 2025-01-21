ODIR=/opt/dependencies-hyprland
UDIR=/usr
git clone https://gitlab.freedesktop.org/pipewire/pipewire.git
cd pipewire
./autogen.sh --prefix=$ODIR
make
make install
make clean
./autogen.sh --prefix=$UDIR
make
make install
