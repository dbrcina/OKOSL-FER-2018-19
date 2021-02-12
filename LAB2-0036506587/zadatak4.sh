#!/bin/bash

cat $(locate *.py) | grep -w "def"

cat $(locate *.c) | grep -e ^#

cat $(locate *.c) | cat -n | grep -e [0-9].'include'
