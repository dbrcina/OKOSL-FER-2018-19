#!/bin/bash

echo "Broj redova koji su uvuceni:"
grep -P '^\t' /usr/include/stdio.h | wc -l
echo

echo "Broj blokova komentara:"
egrep -c "(/\*)" /usr/include/stdio.h
echo


