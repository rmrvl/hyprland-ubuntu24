ODIR=/opt/libva-wayland/usr/local
UDIR=/usr
git clone https://github.com/intel/libva
cd libva
mkdir build 
cd build 
meson .. -Dprefix=$ODIR -Dlibdir=/usr/lib/x86_64-linux-gnu
ninja
sudo ninja install
meson .. -Dprefix=$UDIR -Dlibdir=/usr/lib/x86_64-linux-gnu
ninja
sudo ninja install
