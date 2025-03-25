#!/bin/bash
#Recorrer todos los archivos en el directorio actual y mostrar sus nombres.

for files in *; do
    if [ -f $files ]; then
    echo "Este archivo se llama: $files"
    fi
done
