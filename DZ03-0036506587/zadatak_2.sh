#! /bin/bash

echo
grep -E .[0-9]+. /usr/share/dict/words
echo "Ne postoje rijeci sa znamenkama u /usr/share/dict/words!"
echo

grep -E "^i [[:upper:]]+ .$" /usr/share/dict/words
echo "Ne postoje rijeci u /usr/share/dict/words koje zapocinju s i i imaju neko veliko slovo u sredini!"
echo

echo "Rijeci koje ne sadrze samoglasnike [aeiou]:"
	grep -v [aeiou] /usr/share/dict/words
echo

echo "Rijeci koje sadrze barem dva samoglasika jedan za drugim:"
grep -E "[aeiou]{2,5}" /usr/share/dict/words 
echo

echo "Rijeci koje zavrsavaju s ening ima:"
grep -E .*ening$ /usr/share/dict/words | wc -l
echo

echo "Rijeci koje zavrsavaju s 's ima:"
grep -E ".*'s$" /usr/share/dict/words | wc -l
echo

echo "Rijeci koje zavrsavaju s velikim slovom ima:"
grep -E .*[[:upper:]]$ /usr/share/dict/words | wc -l
echo
