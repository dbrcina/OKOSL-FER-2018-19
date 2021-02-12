#!/bin/bash

cat << kraj > Top10
Linux Mint 17.2
Ubuntu 15.10
Debian GNU/Linux 8.2
Mageia 5
Fedora 23
openSUSE Leap 42.1
Arch Linux
CentOS 7.2-1511
PCLinuxOS 2014.12
Slackware Linux 14.1
FreeBSD
kraj

cat Top10

sed -ri "/[0-9]/!d" ./Top10

sed -ri "s/(^[^0-9]*)([0-9].*)/\2 \1/" Top10

sed -ri "s/.*/\L&/" Top10

sed -ri "s/.[aeiou]/\U&/" Top10

sort -n Top10 -o Top10

echo
cat Top10
