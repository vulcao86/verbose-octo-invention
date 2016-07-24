#!/bin/bash
echo "uruchomiłeś kodowanie metodą zamiany znaków"
echo
echo "podaj tekst do zakodowania:"
echo
read WEJSCIE # pobierz dane od użytkownika
echo
sleep 1 # czekaj chwile
echo "$WEJSCIE" >> dane.txt # zapisz do pliku
echo
echo "tekst do zakodowania zapisany w pliku dane.txt" # poinformuj użytkownika co się sało"
echo
echo "kodowanie tekstu"
cat dane.txt | sed -e  "s/[aeio]/u/g" >> zakodowane.txt
echo
