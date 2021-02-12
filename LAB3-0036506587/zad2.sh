#! /bin/bash

kapsule=0;
komprimirane=0;
sumece=0;

trap "((kapsule++))" SIGUSR1
trap "((komprimirane++))" SIGUSR2
trap "((sumece++))" SIGHUP
trap end SIGINT

function end() {
	echo
	echo "Total: $(($kapsule + $komprimirane + $sumece))"
	exit 0
}

while true 
do
echo
echo "Kapsule : $kapsule"
echo "Komprimirane : $komprimirane"
echo "Sumece : $sumece"
echo
sleep 1
done


