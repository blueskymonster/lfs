cd /sources

rm -rf meson-0.53.1
tar xzf meson-0.53.1.tar.gz
cd meson-0.53.1

python3 setup.py build

python3 setup.py install --root=dest

cp -rv dest/* /
