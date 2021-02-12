#!/bin/bash

touch PNG-07092015.png

sudo rename 's/PNG-([0-9]{2})([0-9]{2})([0-9]{4})/$1_$2_$3.png/' $(find / -name "PNG-*")
