#! /bin/bash

echo
grep -E ".*'s$" /usr/share/dict/words | sed -r "s/'s/s/"
echo

grep -E .*word+.* /usr/share/dict/words | sed -r "s/^/word/"
echo

grep -E ^[[:upper:]] /usr/share/dict/words | sed -r "s/^[[:upper:]]/\L&/" | sed -r "s/.$/\U&/"
echo
