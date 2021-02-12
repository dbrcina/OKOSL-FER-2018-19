#! /bin/bash

#Citanje PID-a druge skripte

pid=$(pgrep -f zad2.sh)

while true
do
sleep 1
sigval=$((1 + RANDOM % 3))
case $sigval in
	1) kill -SIGUSR1 $pid
	     echo "Poslan je signal SIGUSR1"
	     ;;
	2) kill -SIGUSR2 $pid
	     echo "Poslan je signal SIGUSR2"
	     ;;
	3) kill -SIGHUP $pid
	     echo "Poslan je signal SIGHUP"
	     ;;
esac
done
