DEB=$PWD/debian
BUILD=$PWD/build
LIST=$(ls $BUILD)

for PKG in $LIST;
do
	if [ ! -d $BUILD/$PKG/DEBIAN ]; then
		mkdir -p $BUILD/$PKG/DEBIAN
		cp $DEB/$PKG $BUILD/$PKG/DEBIAN/control
		chmod -R o=g $BUILD/$PKG/DEBIAN
		rm -rf $BUILD/$PKG/usr/local/include
		rm -rf $BUILD/$PKG/usr/include
	fi
	dpkg-deb --build --root-owner-group $BUILD/$PKG
done;
