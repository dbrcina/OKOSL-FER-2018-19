#! /bin/bash

bash lab03-3.sh

#Naredba bash ce pokrenuti skriptu u foregroundu.
#CRTL + Z ce zaustaviti naredbu u foregroundu.
#Naredbom bg ce se proces dalje pokrenuti u backgroundu

bg

#U slucaju da zelimo staviti proces u background bez naredbe bg,
#to mozemo uciniti sa znakom & nakon naredbe

pid=$(pgrep -f lab03-3.sh)
kill -SIGHUP $pid

#Ako je proces pauziran, slanjem signala SIGCONT ga nastavljamo.
#Sa signalom SIGHUP gasimo terminal u kojem se proces odvijao.
#Naredbom nohup proces prezivljava gasenje terminala i nastavlja se vrtiti u pozadini.

ps ax -o pid,ni,cmd
renice 5 $pid
