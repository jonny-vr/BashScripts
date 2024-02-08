#!/bin/bash

# Variablen für die Optionen -B und -A initialisieren
BEFORE=0
AFTER=0
SEARCH=""
PDF_FILES=()

# Funktion, um die Optionen -B und -A zu verarbeiten
process_options() {
    while getopts ":B:A:" opt; do
        case $opt in
            B) BEFORE=$OPTARG;;
            A) AFTER=$OPTARG;;
            \?) echo "Ungültige Option: -$OPTARG" >&2;;
        esac
    done
}

# Hauptprogramm
process_options "$@" # Alle übergebenen Optionen verarbeiten

# Shift, um die verarbeiteten Optionen aus den Argumenten zu entfernen
shift $((OPTIND - 1))

# Das Suchwort aus den Argumenten extrahieren
SEARCH="$1"
shift

# Die verbleibenden Argumente sind Dateien, die durchsucht werden sollen
PDF_FILES=("$@")

# Die Schleife durchläuft jede PDF-Datei und führt die Suche durch
for FILE in "${PDF_FILES[@]}"
do
    pdftotext "$FILE" temp
    if grep -iq "$SEARCH" temp ; then
        FILENAME="$FILE"
        LENGTH=$((${#FILENAME} + 1))
        LINE=$(printf "%-${LENGTH}s" "-")
        echo "${LINE// /-}"
        echo "$FILENAME"
        echo "${LINE// /-}"
        grep -i -B "$BEFORE" -A "$AFTER" "$SEARCH" temp
        echo ""
    fi
    rm temp
done
