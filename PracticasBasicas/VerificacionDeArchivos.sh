#!/bin/bash
#Pide al usuario la ruta de un archivo y verifica si existe.

archivo=""
ruta=""
read -p "Ingrese el nombre del archivo con su formato (pj: txt): " archivo
read -p "Ingrese el Directorio del mismo Archivo (con /): " ruta

if [ -f $archivo -a -d $ruta ]; then
    echo "El archivo y directorio existen"
else 
    echo "Ambos no existen"
fi
