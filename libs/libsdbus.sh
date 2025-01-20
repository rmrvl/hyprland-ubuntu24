ODIR=/opt/libsdbus/usr/local
UDIR=/usr
git clone https://github.com/Kistler-Group/sdbus-cpp.git
cd sdbus-cpp
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX:PATH=$ODIR -DCMAKE_BUILD_TYPE=Release ${OTHER_CONFIG_FLAGS}
cmake --build .
sudo cmake --build . --target install
cmake .. -DCMAKE_INSTALL_PREFIX:PATH=$UDIR -DCMAKE_BUILD_TYPE=Release ${OTHER_CONFIG_FLAGS}
cmake --build .
sudo cmake --build . --target install
