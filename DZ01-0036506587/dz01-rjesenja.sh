#! /bin/bash

#Zadatak 1
less ~/.bash_logout

#Zadatak 2
ls -a -lS /home

#Zadatak 3.a
mkdir /tmp/"OKOSL tjedan"
mkdir /tmp/OKOSL\ tjedan/{ponedjeljak,utorak,srijeda,cetvrtak,petak,.subota}

#Zadatak 3.b
ls

#Zadatak 3.c
touch /tmp/OKOSL\ tjedan/.subota/{predavanja,labosi,zadaca1,zadaca2,zadaca3,zadaca4,zadaca5,zadaca6,zadaca7,zadaca8}

#Zadatak 3.d
cp -r /tmp/OKOSL\ tjedan/.subota /tmp/OKOSL\ tjedan/ponedjeljak/

#Zadatak 3.e
ls -aR /tmp/OKOSL\ tjedan/

#Zadatak 4.a
ln -s /var Varionica

#Zadatak 4.b
du -hL Varionica

#Zadatak 4.c
rm Varionica

#Zadatak 5
df -h ~

#Zadatak 6
file /bin/bash /etc/passwd /boot

#Zadatak 7
tail -f /var/log/syslog
