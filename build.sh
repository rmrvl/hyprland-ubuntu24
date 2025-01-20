#!/bin/bash
ROOT=$PWD

mkdir build
cd build

echo Building Dependencies
bash $ROOT/libs/libinput.sh
bash $ROOT/libs/libwayland.sh
bash $ROOT/libs/libxcb-errors.sh
bash $ROOT/libs/libsdbus.sh
bash $ROOT/libs/libpipewire.sh
#bash $ROOT/libs/qt6.5.sh

rm -Rf /usr/share/wayland-protocols
git clone https://gitlab.freedesktop.org/wayland/wayland-protocols.git /usr/share/wayland-protocols

echo Building Hypr Libraries
bash $ROOT/hypr/hyprutils.sh
bash $ROOT/hypr/hyprwayland-scanner.sh
bash $ROOT/hypr/aquamarine.sh
bash $ROOT/hypr/hyprlang.sh 
bash $ROOT/hypr/hyprcursor.sh
bash $ROOT/hypr/hyprgraphics.sh
bash $ROOT/hypr/hyprland-protocols.sh
#bash $ROOT/hypr/hyprland-qtutils.sh

echo Building Hypr Binaries
bash $ROOT/hypr/hyprpaper.sh
bash $ROOT/hypr/hyprpicker.sh
bash $ROOT/hypr/hyprlock.sh
bash $ROOT/hypr/xdph.sh
bash $ROOT/hypr/hypridle.sh
#bash $ROOT/hypr/hyprsunset.sh
#bash $ROOT/hypr/hyprland-qt-support.sh
#bash $ROOT/hypr/hyprsysteminfo.sh

echo Building Hyprland
bash $ROOT/hypr/hyprland.sh


echo Building HyprPolkitAgent
bash $ROOT/hypr/hyprpolkitagent.sh
