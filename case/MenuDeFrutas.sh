#!/bin/bash
#Crea un script que muestre un menú de frutas y, según la opción seleccionada, muestre un mensaje personalizado.

fruta=""
echo "-------Bienvenido al menu frutero-------"
echo "________________________________________"
echo "Seleccione una de las siguientes frutas:"
echo "              1) Manzana"
echo "              2) Banana"
echo "              3) Pera"
echo "              4) Uva"
echo "              5) Kiwi"
read -s -n1 fruta

case $fruta in
    1) 
        echo "Manzana siempre es buena para la memoria" 
        ;;
    2)
        echo "Que nunca falte el potasio con la banana"
        ;;
    3)
        echo "Nadie puede creer que te guste la pera..."
        ;;
    4) 
        echo "A veces es mejor en vinos, pero es uva rica de todas formas"
        ;;
    5)  
        echo "Cara y chiquita pero nunca falla el sabor del kiwi"
        ;;
    *)
        echo "No se que fruta buscabas, pero esa no tenemos..."
        ;;
esac


