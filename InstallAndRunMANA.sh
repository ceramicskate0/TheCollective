cd ~/root/Desktop
git clone --depth 1 https://github.com/sensepost/mana
cd mana
git submodule init
git submodule update
make
make install
kali-install.sh
