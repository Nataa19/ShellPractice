#!/bin/bash
#Recorrer una lista de numeros y detener el bucle cuando se encuentre un numero especifico ingresado por el usuario.

numeros=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)

echo "Ingresa un número a buscar: "
read objetivo

for num in ${numeros[@]}; do
    echo "Comparando con: $num"
    if [ $num -eq $objetivo ]; then
        echo "Número encontrado"
        break 
    fi
done
