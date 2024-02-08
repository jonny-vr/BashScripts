#!/bin/bash

SEARCH="$1" # Suchwort

for (( I=2 ; I <= $# ; I++ )) # für alle übergebenen Dateien prüfe nache Suchwort
do
    pdftotext "${!I}" temp
    if grep -qi "$SEARCH" temp ; then 
        FILENAME="${!I}"
        LENGTH=$((${#FILENAME} + 1)) # Länge des Dateinamens plus eins für das zusätzliche "-"
        LINE=$(printf "%-${LENGTH}s" "-")
        echo "${LINE// /-}"
        echo "${!I}" # Datei, in der Suchwort gefunden wurde
        echo "${LINE// /-}"
        grep -i "$SEARCH" temp # Alle Vorkommen der Datei
        echo ""
    fi
    rm temp
done
