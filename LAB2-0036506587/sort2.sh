#!/bin/bash

cd /tmp/OKOSL/razonoda


IFS=$'\n'

datoteke=($(ls))

for datoteka in ${datoteke[@]}
do
	if [[ "$datoteka" == *".pdf" || "$datoteka" == *".epub" ]]
		then
		if [[ ! -d "../knjige" ]]
			then
			mkdir "../knjige"
		fi
		mv $datoteka "../knjige"
	elif [[ "$datoteka" == *".jpg" || "$datoteka" == *".jpeg" ]]
		then
		if [[ ! -d "../slike" ]]
			then
			mkdir "../slike"
		fi
		mv $datoteka "../slike"
	elif [[ $datoteka == *".mp3" ]]
		then
		if [[ ! -d "../muzika" ]]
			then
			mkdir "../muzika"
		fi
		mv $datoteka "../muzika"
	fi
done



