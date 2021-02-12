#! /bin/bash

#Zadatak 1.a
echo "0036506587" > personal_info.dat
cat < personal_info.dat

#Zadatak 1.b
echo "Darijo Brčina" >> personal_info.dat
cat < personal_info.dat

#Zadatak 1.c
echo "okosl" | tee >> personal_info.dat
cat < personal_info.dat

#Zadatak 2.a
mkdir /tmp/OKOSL
cd /tmp/OKOSL
sort -n korisnici.dat > korisnici.sortirano.dat

#Zadatak 2.b
cut -f2 -d ":" korisnici.dat | sort | uniq -iu > jedinstveni_korisnici.dat 
cat jedinstveni_korisnici.dat

#Zadatak 2.c
cut -f2 -d ":" korisnici.dat | sort | uniq -id > nejedinstveni_korisnici.dat 
cat nejedinstveni_korisnici.dat

#Zadatak 3.a
grep -i "ping" /usr/share/dict/words | wc -w

#Zadatak 3.b
grep -i "you" /usr/share/dict/words > yous.dat
cat yous.dat

#Zadatak 3.c
wc -w yous.dat

#Zadatak 3.d


#Zadatak 4.a
find -name jedinstveni_korisnici.dat

#Zadatak 4.b
locate -i jedinstveni_korisnici.dat

#Zadatak 5.a	


