#!/bin/bash
#Pide al usuario su edad y muestra un mensaje indicando si puede acceder o no. Tiene que ser mayor o igual a 18 años.

edad='^([1-9]{1})([1-9]{2})$'

echo "Sea usted Bienvenid@ a la seleccion de personal por edad"
read -p "Ingrese su edad: " edad 

if [ $edad -ge 18 ]; then
    echo "Es admitido"
else 
    echo "No será admitido"
fi


