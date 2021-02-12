#!/bin/bash

sudo useradd -M --shell /bin/bash stjepan

sudo visudo

sudo groupadd student

sudo usermod -aG studenti	

sudo mkdir /home/studenti

sudo chmod a-w /home/studenti 

sudo mkdir /home/studenti/studenti-shared

sudo chmod ug+rwx,o-rwx /home/studenti/studenti-shared

sudo chown -R stjepan:studenti /home/studenti

mkdir -p /tmp/skeleton/{Documents,Download}

sudo ln -s /home/studenti/studenti-shared /tmp/skeleton/Shared

bash stvaranje_korisnika.sh


