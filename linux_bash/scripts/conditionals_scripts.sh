#!/bin/bash
num=15
if [ $num -ge 10 ]; then
	echo "Numero mayor o igual que 10"
fi

read -p " escoge un numero (1/2/3) : " numero

case $numero in
	1) echo " escogiste el 1";;
	2) echo " escogiste el 2";;
	3) echo " escogiste el 3";;
	*) echo " numero distinto";;
esac

name=alejandro

if [ -n $name ]; then
	echo "El nombre existe"
else 
	echo "no exite el nombre"
fi

if [ $numero -ge 1 ] && [ -n $name ]; then 
	echo "todo correcto"
fi

if [ -e "./script1.sh" ]; then
	echo "listo mi papacho"
fi
	



