ODIR=/opt/hyprland
UDIR=/usr
git clone --recursive https://github.com/hyprwm/xdg-desktop-portal-hyprland.git
cd xdg-desktop-portal-hyprland/
cmake -DCMAKE_INSTALL_LIBEXECDIR=/usr/libexec -DCMAKE_INSTALL_PREFIX=$ODIR -B build
cmake --build build
sudo cmake --install build
cmake -DCMAKE_INSTALL_LIBEXECDIR=/usr/libexec -DCMAKE_INSTALL_PREFIX=$UDIR -B build
cmake --build build
sudo cmake --install build
