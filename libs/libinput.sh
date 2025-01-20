ODIR=/opt/libinput/usr/local
UDIR=/usr
git clone https://gitlab.freedesktop.org/libinput/libinput
cd libinput
meson setup --prefix=$ODIR builddir/
ninja -C builddir/
sudo ninja -C builddir/ install
meson setup --prefix=$UDIR builddir/
ninja -C builddir/
sudo ninja -C builddir/ install
