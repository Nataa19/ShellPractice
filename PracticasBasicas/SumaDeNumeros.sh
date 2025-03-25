#!/bin/bash
#Pide al usuario dos números y muestra el resultado de sumarlos.

num1=0
num2=0

read -n1 -p "Ingrese el primer valor a sumar: " num1
echo -e "\n"
read -n1 -p "Ahora el segundo: " num2
suma=$((num1 + num2))
echo "La suma da por resultado= $suma"


