cd /
cd root
cd Desktop/HackerTools/
apt-get install qt5-default build-essential
wget https://github.com/dannagle/PacketSender/archive/v5.0.tar.gz
tar -xzvf v5.0.tar.gz
cd PacketSender-5.0/src
qmake
make
