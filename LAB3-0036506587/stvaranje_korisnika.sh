#!/bin/bash

imena=($(cat imena.txt))

for ime in ${imena[@]}
do
	sudo useradd -m --skel /tmp/skeleton --shell /bin/bash $ime
	sudo adduser $ime "studenti"
	echo "$ime:NREznZZd6RIqY" | sudo chpasswd -e $ime
	sudo chmod go-rwx /home/$ime
done

