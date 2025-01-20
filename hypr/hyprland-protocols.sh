ODIR=/opt/hyprland-protocols/usr/local
UDIR=/usr
git clone https://github.com/hyprwm/hyprland-protocols.git
cd hyprland-protocols
meson build/ --prefix=$ODIR
meson setup --reconfigure build/
ninja -C build install
meson build/ --prefix=$UDIR
meson setup --reconfigure build/
ninja -C build install
