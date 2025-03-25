#!/bin/bash
#Pide que ingresen su usuario y contraseña.

user="admin"
passwd="admin"

read -p "Ingrese su Nombre de Usuario: " user
read -s -p "Ingrese su Contraseña: " passwd

if (( $user = "admin" )) && (( $passw = "admin" )); then
    echo "Usuario $user logueado correctamente"

else 
    echo "Todo incorrecto"
fi
