#!/bin/bash
#Pide al usuario que ingrese números hasta que escriba 0, luego muestra la suma total.

suma=0
echo "Ingresa números para sumar (0 para terminar):"

while true; do
    read numero
    if [ "$numero" -eq 0 ]; then
        break
    fi
    suma=$((suma + numero))
done

echo "La suma total es: $suma"
