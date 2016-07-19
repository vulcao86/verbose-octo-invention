#!/bin/bash

# autor Piotr Słupczewski 106423
# 
# wersja 1.0
#
# skrypt wybiera metodę kodowania tekstu
# możliwe parametry wywołania
# -i   =   informacja o działaniu programu
# -v   =   informacja o wersji
# -h   =   help, sposób używania programu
#
#

#
//////////////////// mozliwe parametry wykonania //////////////////
while getopts ':ihv:' wybor; do
	case $wybor in
	i)
		echo "Wyświetlam informacje o działaniu programu"
		echo "Program służy do kodowania tekstu dwiema różnymi metodami"
		exit
		;;
	h)
		echo "wyświetlam pomoc"
		echo "Po uruchomienie programu należy wybrać metodę kodowania pliku"
		echo "Następnie należy podać nazwę pliku, który ma być zakodowany"
		echo "plik wynikowy zostanie zapisany pod nazwą pliku wejściowego z dodaną końcówą \".zak\""
		exit
		;;	
	v)
		echo "Wyświetlam informacje o wersji"
		echo "Wersja 1.0"
		exit
		;;
	\?)	
		echo "Podałeś nieprawidłowy parametr"
		exit 1
		;;
	esac
done
///////////////////////main programu////////////////////	
echo "================================="
echo
echo
echo		=KODER 600=
echo
echo
echo "=================================="
echo
echo	"możliwe parametry wywołania"
echo
echo	" -i wyświetlanie informacji o programie"
echo	" -h wyświetla pomoc do programu"
echo	" -v wyświetla informacje  wersji"
echo
echo  "uruchomić kodowanie?"
echo  "1 - tak, metoda ROT13" 
echo  "2 - tak, metodą zmiana znaków" 
echo  "3 - nie, koniec programu" 
						# wyświetla zapytanie o uruchomienie skryptu

read ODP 					# wczytujemy odpowiedź od użytkownika
	case $ODP in

		1) 	echo "szyfrowanie ROT13";./kodowanie_ROT13.sh;; # odpalamy szyfrowanie ROT13 z pliku
		2)	echo "szyfrowanie zamiana_znakow";./kodowanie_ZAMIANA.sh;; #odpalamy kodowanie ZAMIANA_ZNAKOW z innego pliku
		3) 	echo "Podano 'nie'"
			echo "koniec"

	esac

