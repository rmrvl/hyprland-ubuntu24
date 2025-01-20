ODIR=/opt/hyprwayland-scanner/usr/local
UDIR=/usr
echo Building libhyprwayland-scanner
git clone --recursive https://github.com/hyprwm/hyprwayland-scanner.git
cd hyprwayland-scanner/
cmake -DCMAKE_INSTALL_PREFIX=$ODIR -B build
cmake --build build -j `nproc`
cmake --install build
cmake -DCMAKE_INSTALL_PREFIX=$UDIR -B build
cmake --build build -j `nproc`
cmake --install build
