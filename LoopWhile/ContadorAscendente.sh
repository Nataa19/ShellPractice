#!/bin/bash
#Crea un script que cuente desde 1 hasta el numero ingresado por el usuario

read -p "Ingresa un número para contar hasta él: " limite
echo -e "\n"
contador=1

while [ $contador -le $limite ]; do
    echo "Contador: $contador"
    ((contador++))
done
