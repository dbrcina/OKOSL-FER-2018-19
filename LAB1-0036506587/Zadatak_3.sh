#! /bin/bash

echo -n "Upisi godinu za koju te zanima koliko puta se dogodio petak 13.: "
read godina;
petkovi=$(ncal $godina | grep ^pe -i | grep 13 -o | wc -l)
echo "U godini $godina, petak 13. se dogodio $petkovi puta."

echo -n "Upisi godinu za do koje te zanima koliko puta ce se dogoditi petak 13.: ";
read opseg
for godina in $(seq 2017 $opseg);
do
	petkovi=$(ncal $godina | grep ^pe | grep 13 -o | wc -l)
	echo "U godini $godina, petak 13. se dogodio $petkovi puta."
done
