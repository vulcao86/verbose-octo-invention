#!/bin/bash

# plik ROT13 uruchamia kodowanie tekstu metoda ROT13

#
#
# autor Piotr SŁupczewski 2016 
#
#
echo "kodowanie ROT13"
nazwa_pliku="$1"
while read -r line
do
	nazwa="$linia"
	tr '[A-Za-z]''[N-ZA-Mn-za-m]'
done < "$nazwa_pliku"

