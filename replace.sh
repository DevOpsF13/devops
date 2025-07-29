#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Utilizare: $0 <fisier> <valoare_veche> <valoare_noua>"
    exit 1
fi

FISIER="$1"
VECHI="$2"
NOU="$3"

if [ ! -f "$FISIER" ]; then
    echo "Eroare: Fișierul '$FISIER' nu există."
    exit 2
fi

sed -i "s|$VECHI|$NOU|g" "$FISIER"

echo "Am inlocuit toate valorile '$VECHI' din fisierul '$FISIER' cu '$NOU'."
