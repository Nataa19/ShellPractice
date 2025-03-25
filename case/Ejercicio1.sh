#!/bin/bash
#Realizar un tablero de opciones con Case, donde se pueda elegir entre actualizar el sistema, mostrar el directorio de trabajo actual y un uptime -p.

opcion='^1|2|3$'

echo "Bienvenido al Menú Master"
echo "A continuacion elija una de las 3 opciones"
echo "1) Actualizar el Sistema Operativo"
echo "2) Saber donde estoy parado"
echo "3) ¿Cuanto tiempo llevo encendido?"
read -n1 -p "Ingrese lo que desea: " opcion
echo -e "\n"
echo "La opcion elegida es: $opcion"
echo -e "\n"

case $opcion in
    1)  
        echo "Actualizando sistema..."
        sudo apt update && sudo apt upgrade -y
        ;;
    2)
        echo "Mostrando el directorio actual..."
        pwd
        ;;
    3)
        echo "Mostrando el tiempo de encendido de la Maquina..."
        uptime -p
        ;;
    *) 
        echo "Opcion no reconocida"
esac


