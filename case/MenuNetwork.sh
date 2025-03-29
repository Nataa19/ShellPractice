#!/bin/bash
#Menu con el objetivo de poder seleccionar varias opciones para gestionar o monitorear nuestra red

echo "Bienvenido $USER al menu de red"
echo "En el siguiente menu podrá escoger entre distintas opciones"
echo "1) Verificar la conexion con un host  "
echo "2) Muestra el recorrido de los paquetes hacia un host "
echo "3) Muestra interfaces de red y direcciones IP "
echo "4) REDES Y PUERTOS LOCALES: "
echo "5) Resuelve DNS a IP o viceversa: "
echo "6) REDES Y PUERTOS REMOTOS nmap"
echo "7) ANCHO DE BANDA: iftop -nethogs -bmon -vnstat -speedtest"
echo "8) tcpdump"
echo "9) wget"
read -p "Ingrese una opcion: " op
echo -e "\n"

case $op in
    1) 
    read -p "Ingrese la IP o Dominio del host:  " pingInput
    echo "Recuerde terminar con Ctrl + c"
    echo "Haciendo la validacion ping..."
    ping $pingInput 
    ;;
    
    2) 
    read -p "Ingrese la IP o Dominio del host:  " tracerouteInput
    echo "Trazando la ruta..."
    traceroute $tracerouteInput 
    ;;
    
    3) 
    echo "¿Que opcion prefiere?"
    echo "1) Ver Interfaces e IPs"
    echo "2) Ver IP, Mascara de subred y tipo de Transmision"
    echo "3) Ver info completa"
    read -n1 -p "Ingrese su opcion: " o3
    echo -e "\n"
        case $o3 in
        1) echo "Eligió la opción 1..."
        sleep 2
        ip -4 addr | awk '/link/ether {print $2}' | cut -d'/' -f1
        ;;
        2) echo "Eligió la opción 2..."
        sleep 2
        ifconfig | grep 'inet'
        ;;
        3) echo "Eligió la opción 3..."
        sleep 1
        ifconfig
        ;;
        esac
    ;;

    4) 
    echo "¿Que opcion prefiere?"
    echo "1) Ver Procesos en estado LISTEN mediante TCP y UDP" 
    echo "2) Ver Procesos TCP en estado LISTEN" 
    echo "3) Ver Procesos UDP en estado LISTEN" 
    echo "4) Ver EStadisticas generales" 
    echo "5) Ver toda la info filtrado por Puerto " 
    echo "6) Filtrar por Estado" 
    read -n1 -p "Ingrese su opcion: " o4
    echo -e "\n"
        case $o4 in
        1) echo "Eligió la opción 1..."
        sleep 2
        sudo netstat -tulnp
        ;;
        2) echo "Eligió la opción 2..."
        sleep 2
        netstat -tlnp
        ;;
        3) echo "Eligió la opción 3..."
        sleep 1
        netstat -ulnp
        ;;
        4) echo "Eligió la opción 4..."
        sleep 2
        netstat -s
        ;;
        5) echo "Eligió la opción 5..."
        sleep 1
        echo "¿Origen o Destino?"
        echo "1) Origen"
        echo "2) Destino"
        read -p "Ingrese 1/2" o4o5
        echo -e "\n"
            case $o4o5 in
            1) read -p "Escriba el puerto: " port5
               echo "Ejecutando..."
               sleep 2
               sudo netstat -tunp sport=$port5
               ;;
            2) read -p "Escriba el puerto: " port51
               echo "Ejecutando..."
               sleep 2
               sudo netstat -tunp dport=$port51
               ;;
            esac
        ;;
        6) echo "Eligió la opción 6..."
        sleep 2
        echo "Escoja uno de los siguientes estados: "
        echo "1) established"
        echo "2) syn-sent"
        echo "3) syn-recv"
        echo "4) fin-wait-1"
        echo "5) fin-wait-2"
        echo "6) time-wait"
        echo "7) close"
        echo "8) close-wait"
        echo "9) last-ack"
        echo "10) listen"
        echo "11) closing"
        echo "12) unknown"
        read -p "Ingrese: " o4o6 
        echo -e "\n"
            case $o4o6 in
            1) sudo netstat -tulnp state established
            sleep 2
            ;;
            2) sudo netstat -tulnp state syn-sent
            sleep 2
            ;;
            3) sudo netstat -tulnp state syn-recv
            sleep 2
            ;;
            4) sudo netstat -tulnp state fin-wait-1
            sleep 2
            ;;
            5) sudo netstat -tulnp state fin-wait-2
            sleep 2
            ;;
            6) sudo netstat -tulnp state time-wait
            sleep 2
            ;;
            7) sudo netstat -tulnp state close
            sleep 2
            ;;
            8) sudo netstat -tulnp state close-wait
            sleep 2
            ;;
            9) sudo netstat -tulnp state last-ack
            sleep 2
            ;;
            10) sudo netstat -tulnp state listen
            sleep 2
            ;;
            11) sudo netstat -tulnp state closing
            sleep 2
            ;;
            12) sudo netstat -tulnp state unknown
            sleep 2
            ;;
            esac
        esac    
        ;;
    5)
    echo "Elija la forma de consulta: "
    sleep 1
    echo "1) Consulta básica"
    echo "2) Consulta completa"
    echo "3) Consulta registros de Mail"
    echo "4) Consulta de Nombre de Servidores"
    echo "5) Consulta Registros CNAME"
    echo "6) Consulta Registros IPv4"
    read -p "Ingrese el número de consulta: " o5
    read -p "Ingrese el Dominio o IP a resolver: " domIP 
    echo -e "\n"
        case $o5 in
        1) 
        nslookup $domIP
        ;;
        2) 
        nslookup -type=any $domIP
        ;;
        3) 
        nslookup -type=mx $domIP
        ;;
        4) 
        nslookup -type=ns $domIP
        ;;
        5) 
        nslookup -type=cname $domIP
        ;;
        6) 
        nslookup -type=A $domIP
        ;;
        esac
   ;;
   
   6)
   ;;
   
   7)
   ;; 
   
   8)
   ;; 
   
   9)
   ;;

esac

