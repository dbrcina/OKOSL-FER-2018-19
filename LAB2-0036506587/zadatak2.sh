#!/bin/bash

datoteke=$(find | grep -Rls "c[[:alpha:]]{2}]\.[[:alpha:]].*")
for datoteka in ${datoteke[@]}
do
echo $datoteka
done


datoteke=$(find | grep -Rls "[^a-k]*[0-9]+[^a-k]*")
for datoteka in ${datoteke[@]}
do
echo $datoteka
done
