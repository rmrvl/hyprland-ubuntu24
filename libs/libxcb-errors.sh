ODIR=/opt/libxcb-errors/usr/local
UDIR=/usr
git clone --recursive https://gitlab.freedesktop.org/xorg/lib/libxcb-errors
cd libxcb-errors
./autogen.sh
./configure --prefix=$ODIR
make
make install
./autogen.sh
./configure --prefix=$UDIR
make
make install
