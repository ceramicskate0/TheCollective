#!/bin/bash
apt-get install -y hostapd dnsmasq wireless-tools iw wvdial
sed -i 's#^DAEMON_CONF=.*#DAEMON_CONF=/etc/hostapd/hostapd.conf#' /etc/init.d/hostapd
cat > /etc/dnsmasq.conf
log-facility=/var/log/dnsmasq.log
#address=/#/10.0.0.1
#address=/google.com/10.0.0.1
interface=wlan0
dhcp-range=10.0.0.10,10.0.0.250,12h
dhcp-option=3,10.0.0.1
dhcp-option=6,10.0.0.1
#no-resolv
log-queries
EOF
service dnsmasq start
ifconfig wlan0 up
ifconfig wlan0 10.0.0.1/24
iptables -t nat -F
iptables -F
iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE
iptables -A FORWARD -i wlan0 -o ppp0 -j ACCEPT
echo '1' > /proc/sys/net/ipv4/ip_forward
cat > /etc/hostapd/hostapd.conf
interface=wlan0
driver=nl80211
ssid=FreeWifi
channel=1
# Yes, we support the Karma attack.
#enable_karma=1
EOF
service hostapd start
