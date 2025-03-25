#!/bin/bash
#Pide 2 numeros y determina cual es mayor o si son iguales.

n1=0
n2=0

echo "Bienvenido a COMPARACION DE NUMEROS"
read -p "Ingrese el primer numero a comparar: " n1
echo -e "\n"
read -p "Ingrese el segundo numero a comparar: " n2

if [ $n1 -gt $n2 ]; then
    echo "El primer número es mayor"

elif [ $n2 -gt $n1 ]; then
    echo "El segundo número es mayor"

else
    echo "Son iguales"
fi

