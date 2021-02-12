#!/bin/bash

cd /tmp/OKOSL/downloads

for i in /tmp/OKOSL/downloads/* ; do
        if  [[  $i == *"_"* ]]; then
                a=$(echo "$i"| cut -d'_' -f 1)
                if [[ ! -d "$a" ]]; then
                        mkdir "${a}"
                fi
                mv "$i" "$a"
        else
                if [[ ! -d "razonoda" ]]; then
                        mkdir razonoda
                fi
                mv "$i" "razonoda"
        fi
done

cd /tmp/OKOSL/downloads/razonoda

for i in /tmp/OKOSL/downloads/razonoda/* ; do
        if [[ $i == *".pdf" ]] ||  [[ $i == *".epub" ]]; then
                if [[ ! -d "knjige" ]]; then
                        mkdir "knjige"
                fi
                mv "$i" "knjige"
        fi
        if [[ $i == *".jpg" ]] || [[ $i == *".jpeg" ]] ; then
                if [[ ! -d "slike" ]]; then
                        mkdir "slike"
                fi
                mv "$i" "slike"
        fi
        if [[ $i == *".mp3" ]]; then
                if [[ ! -d "muzika" ]]; then
                        mkdir "muzika"
                fi
                mv "$i" "muzika"
        fi
done
