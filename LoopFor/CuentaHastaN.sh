#!/bin/bash
#Pide al usuario un numero y cuenta desde 1 hasta ese numero.

echo "Bienvenido al bucle de "n" numeros"
read -p "Ingrese el num que le gustaria sea el final: " num

for (( n=1; n<=$num; n++ )); do
    if [ $n -eq "1" ]; then
    echo "$n vez"
    else
        echo "$n veces"
    fi
done
