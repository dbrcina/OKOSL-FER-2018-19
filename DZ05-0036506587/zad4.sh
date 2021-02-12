#! /bin/bash

gcc signal_handler.c
./a.out &

id=($(ps -a | egrep "a.out"))

kill ${id[0]} #tu se uzima id[0] jer se pid nalazi na pocetku

#defaultno se salje SIGTERM signal koji se obraduje u programu tako da mu se makne inicijalna namjena
#pa se zbog toga ne gasi program

kill -SIGKILL ${id[0]}

#SIGKILL ce prisilno ugasiti program jer za njega ne postoji signal handler
#on je napisan u kodu, ali SIGKILL zanemaruje to 

./a.out &

id=($(ps -a | egrep "a.out"))

kill -SIGUSR1 ${id[0]}
echo $?

kill -SIGINT ${id[0]}
echo $?

./a.out &

id=($(ps -a | egrep "a.out"))

kill -SIGUSR2 ${id[0]}
echo $?

#pomocu $? doznajemo vrijednost povratne vrijednosti programa
#ako je povratna vrijednost 0, onda je sve uredu, inace se nesto neplanirano dogodilo
