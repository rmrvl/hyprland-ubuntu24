git clone --recursive https://github.com/hyprwm/Hyprland.git
cd Hyprland
make all
make install
sed -i "s/\/usr\/local/\/opt\/hyprland\/usr\/local/g" Makefile
make install
