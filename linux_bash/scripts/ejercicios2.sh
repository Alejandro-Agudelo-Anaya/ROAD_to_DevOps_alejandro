echo " Primer punto"
echo " "
read -p "dame un numero : " num1

if [ $num1 -eq 0 ]; then
	echo "es 0"
elif [ $num1 -lt  0 ]; then
	echo "es negativo"
else	
	echo "es positivo"
fi

echo "punto 2"

echo " "
read -p "dame un numero : " num2

read -p "dame un numero : " num3

if [ $num2 -gt $num3 ]; then
	echo "el primero numero es mayo"
else	
	echo "el segundo es mayor o igual"

fi

echo "punto 3"
echo " "

read -p " escoge un numero (1/2/3) : " numero

case $numero in
	1) echo " escogiste el 1";;
	2) echo " escogiste el 2";;
	3) echo " escogiste el 3";;
	*) echo " numero distinto";;
esac


echo " "

echo "punto 4"

contador=1

while [ $contador -le 10 ]
do
	echo " $contador "
	((contador++))
done

echo " punto 5 "

echo " "

contador=0
numero=1
while [ $numero -ne 0 ]
do
	read -p "introduzca un numero" numero
	((contador++))
done
echo " numero de intentos $((contador))"


echo " punto 6"

echo " "

for i in 1 2 3 4 5 6 7 8 9
do
	if [ $i -eq 5 ]; then
		continue
	elif [ $i -eq 8 ]; then 
	       break
       else
	       echo " el numero es $i"
	fi
done		

echo " punto 7"

echo " "

saludar() {
	echo " hola $1, bienvenido al script"	
} 
saludar $1


echo " punto 8 "

echo " "

suma(){
	resultado=$(($1+$2))
	return $resultado
}

suma $2 $3
total=$?

echo "El resultado es: $total"
echo " "
echo " punto 9 "
echo " "

cp texto.txt ../ || echo " fallo el comando"

echo ""
echo "punto 10"
echo " "

echo "bienvenido $(whoami)"
date
echo " DESCRIPCION: es un script que enlista todos los archis .sh de la carpeta"
for i in *.sh
do
	echo " $i "
done



