#!/bin/bash

# autor Piotr Słupczewski
# 
# wersja 1.0a
#
#
///////////////////////////// mozliwe parametry wykonania //////////////////

while getopts ':ihv:' wybor; do
	case $wybor in
	i)
		echo "Wyświetlam informacje o działaniu programu"
		echo "Program służy do kodowania tekstu dwiema różnymi metodami"
		echo "wybrane metody wybieramy po uruchomieniu programu "
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
		echo "Wyświetlam informacje o historii wersji"
		echo
		echo "Wersja 2.0"
		echo "dodano szkielety plikow z funkcjami kodującymi"
		echo "Wersja 1.0"
		echo "================================="
		echo "powitanie"
		echo "dodanie dokumentacji" 
		echo "dodanie funkcji odpowiedzialnych za wywołanie kodowania"
		echo "TASKS TODO"
		echo "1.zenity?"
		echo "2.dodanie więcej metod kodowania"
		echo "3.deszyfrowanie?"
		echo "================================="
		exit 
		;;
	\?)	
		echo "Podałeś nieprawidłowy parametr"
		exit 1
		;;
	esac
done
# /////////////////////////////////////////////////main programu////////////////////	
echo "========================================="
echo "|				         |"
echo "|					 |"
echo "|		=KODER 600=		 |"
echo "|	autor: Piotr Słupczewski	 |"
echo "| 	wersja 1.0			 |"
echo "|					 |"
echo "|					 |"
echo "========================================="
echo
echo	"Witaj w programie koder600"
echo
echo	"możliwe parametry wywołania z linii poleceń:"
echo
echo	" -i wyświetlanie informacji o programie"
echo	" -h wyświetla pomoc do programu"
echo	" -v wyświetla informacje  wersji"
echo
echo
echo  "uruchomić kodowanie?"
echo  "1 - tak, metoda ROT13" 
echo  "2 - tak, metodą zmiana znaków" 
echo  "3 - nie, koniec programu"
echo
echo
echo
echo
echo "==========================================================="
echo
echo
echo
# ////// wczytywanie odpowiedzi od użytkownika /////////////////////////////////

						# wyświeta zapytanie o uruchomienie skryptu
read ODP 					# wczytujemy odpowiedź od użytkownika
	case $ODP in

		1) 	echo "wybrałeś szyfrowanie ROT13, odpalam skrypt szyfrujący";./ROT13.sh;; # odpalamy szyfrowanie ROT13 z pliku
		2)	echo "szyfrowanie zamiana_znakow";./kodowanie_ZAMIANA.sh;; #odpalamy kodowanie ZAMIANA_ZNAKOW z innego pliku
		3) 	echo "Podano 'nie'"
			echo "koniec"

	esac
# /////////////////////////////////////////////////////////////////////////////////////
