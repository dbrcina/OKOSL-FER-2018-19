#! /bin/bash

cd
mkdir LAB1
cd LAB1/

mkdir source
touch source/empty

cp -r /boot/ /etc/ source/ 2> /dev/null

du --si -s source/
echo

ln -s source/ ./target

cd -L target/
pwd
echo

cd ..
cd -P target/
pwd
echo

du -P -s --si ./
echo

touch -r empty novi 
 
cd
rm -rf LAB1/*

rmdir LAB1

