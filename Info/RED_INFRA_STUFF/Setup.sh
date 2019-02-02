#!/bin/bash
#REF:https://rastamouse.me/2017/08/automated-red-team-infrastructure-deployment-with-terraform---part-1/

sudo su
apt-get updates && apt-get upgrade -y && apt-get dist-upgrade -y

#REF:https://www.digitalocean.com/community/tutorials/how-to-setup-a-firewall-with-ufw-on-an-ubuntu-and-debian-cloud-server
apt-get install ufw
echo "UFW STATUS:"
ufw status
ufw disable
ufw enable
ufw default deny incoming
ufw default deny outgoing
ufw allow 80/tcp
ufw allow 443/tcp
ufw allow 53/udp
sudo ufw status
sudo ufw allow from {SAFE IP}

#REF:https://www.pentestpartners.com/security-blog/socat-fu-lesson/
#REF:https://artkond.com/2017/03/23/pivoting-guide/
socat -v tcp4-listen:{PORT-IN},reuseaddr,fork tcp4:{IP DEST}:{PORT OUT TO}

#REF:https://medium.com/rvrsh3ll/redirecting-cobalt-strike-dns-beacons-e3dcdb5a8b9b
screen -dmS socat
screen -S socat -p 0 -X stuff ‘socat udp4-listen:53,reuseaddr,fork tcp:localhost:53535; echo -ne \n'
screen -dmS ssh1
screen -S ssh1 -p 0 -X stuff “ssh -i ssh_key -oStrictHostKeyChecking=no -L 53535:localhost:53535 -l username teamserver_ip; echo -ne \n;”
ssh -oStrictHostKeyChecking=no -i ssh_key -l {username} {teamserver_ip} ‘socat tcp4-listen:53535,reuseaddr,fork UDP:localhost:53 &’

#REF:https://github.com/bluscreenofjeff/Red-Team-Infrastructure-Wiki#securing-infrastructure
nano /etc/ssh/sshd_config
# Allow the SSH client to specify which hosts may connect
#GatewayPorts yes
# Allow both local and remote port forwards
#AllowTcpForwarding yes

#SSH for HTTP
tmux new -S redir80
ssh <redirector> -R *:80:localhost:80
#SSH for HTTP
tmux new -S redir80443
ssh <redirector> -R *:80:localhost:80 -R *:443:localhost:443

#REF:https://www.ostechnix.com/configure-ssh-key-based-authentication-linux/
ssh-keygen
ssh-keygen -p -f ~/.ssh/id_rsa
ssh-copy-id {USERNAME)@{IP DEST}

#Disable SSH PW Auth
nano /etc/ssh/sshd_config
#set PasswordAuthentication no
systemctl restart sshd

#Logging
#IDEA:https://vincentyiu.co.uk/cobaltsplunk/
nano /etc/rsyslog.conf
#local3.*                        /var/log/apache2/combined_error.log
#local4.*                        /var/log/apache2/combined_access.log
service rsyslog restart

#REF:https://bluescreenofjeff.com/2017-08-08-attack-infrastructure-log-aggregation-and-monitoring/
nano /etc/rsyslog.d/apache.conf
#$ModLoad imfile
# Default Apache Error Log
#$InputFileName /var/log/apache2/error.log
#$InputFileTag apache-error-default:
#$InputFileStateFile stat-apache-error
#$InputFileSeverity info
#$InputFileFacility local3
#$InputRunFileMonitor
#Default Apache Access Log
#$InputFileName /var/log/apache2/access.log
#$InputFileTag apache-access-default:
#$InputFileStateFile stat-apache-access
#$InputFileSeverity info
#$InputFileFacility local4
#$InputRunFileMonitor
#$InputFilePollInterval 1

#ADD TO BOTTOM OF FILE
#$WorkDirectory /var/lib/rsyslog # where to place spool files
#$ActionQueueFileName fwdRule1 # unique name prefix for spool files
#$ActionQueueMaxDiskSpace 1g   # 1gb space limit (use as much as possible)
#$ActionQueueSaveOnShutdown on # save messages to disk on shutdown
#$ActionQueueType LinkedList   # run asynchronously
#$ActionResumeRetryCount -1    # infinite retries if host is down
#local3.* @@{ADD IP OF BOX} #replace with rsyslog server
#local4.* @@{ADD IP OF BOX} #replace with rsyslog server

service rsyslog restart
