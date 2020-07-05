#TODO: don't hardcode version
cd /mnt/lfs/sources

rm -rf tcl8.6.10
tar xzf tcl8.6.10-src.tar.gz
cd tcl8.6.10

cd unix
./configure --prefix=/tools

make

#TZ=UTC make test

make install

chmod -v u+w /tools/lib/libtcl8.6.so

make install-private-headers

ln -sv tclsh8.6 /tools/bin/tclsh
