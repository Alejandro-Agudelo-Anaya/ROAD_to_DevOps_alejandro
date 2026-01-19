#!/bin/bash

cp files.txt /home/alejandro/ROADmap/linux_bash/

if [ $? -ne 0 ]; then 
      echo " Error al copiar el archivo"
fi


cp files.txt /home/alejandro/ROADmap/linux_bash/ || echo "Otra vez fallo"

#&& si sirve
