#! /bin/bash

name=$(whoami)

ps axo user,pid,pcpu,comm | egrep $name | sort -k3 -V

echo

pstree -nl $name
