#!/bin/bash
#-------------------FIX FUCKING OPENVAS-----------------------------
openvas-setup
netstat -antp
openvas-check-setup
openvas-nvt-sync
greenbone-nvt-sync
openvas-mkcert
openvas-mkcert-client -n -i
openvasmd --create-user=root --role=Admin
echo "ADD YOUR USER NAME BY ADDING INFO ON NEXT LINE AND UNCOMMENT"
openvasmd --create-user=admin --new-password=admin
openvasmd --user=admin --new-passwod=admin
echo "Created OPENVAS User. UN=admin PW=admin"
openvasmd --rebuild
openvas-check-setup
openvas-start
