#!/bin/bash
#Crea un script que recorra una lista de frutas e imprima cada una con un mensaje

frutas=(manzana pera banana naranja mango mandarina) 

echo "Bienvenido al mensaje mas repetitivo"
echo -e "\n"

for fruta in ${frutas[*]}; do
    echo "Esta $fruta es buenisima"
done


