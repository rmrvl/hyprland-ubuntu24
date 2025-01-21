ODIR=/opt/dependencies-hyprland
UDIR=/usr
git clone https://gitlab.freedesktop.org/wayland/wayland.git
cd wayland
meson setup build/ -Ddocumentation=false
meson build/ --prefix=$ODIR
ninja -C build install
meson setup build/ -Ddocumentation=false
meson build/ --prefix=$UDIR
ninja -C build install
