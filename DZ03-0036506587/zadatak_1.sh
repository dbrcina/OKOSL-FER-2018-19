#! /bin/bash

echo
echo "Svi direktoriji u /usr/share koji zapocinju s nazivom gtk:"
ls /usr/share/gtk* | grep /usr

echo
echo "Svi direktoriji u /usr/share koji sadrze barem dvije znamenke:"
ls /usr/share/*[0-9][0-9]* | grep /usr
echo
