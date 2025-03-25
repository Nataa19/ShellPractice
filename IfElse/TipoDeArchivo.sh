#!/bin/bash
#Pide el nombre de una ruta y verifique si es un archivo, una ruta o si existe la misma.


echo "Bienvenido al Aladino de Linux"
read -p "Comentame el nombre de un Path y te diré que es: " nruta

if [ -f $nruta ]; then
    echo "Es un archivo regular"

elif [ -d $nruta ]; then
    echo "Es un directorio"

else
    echo "No existe"

fi


