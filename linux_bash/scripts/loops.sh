#!/bin/bash
#for
for i in 1 2 3 4 5
do
	echo "Numero: $i"
done

for name in *.sh
do
	echo "Archivos .sh $name "
done

#while
count=1
while [ $count -le 5 ]
do
	echo " contador : $count"
	((count++))
done

#until
count=1
until [ $count -gt 10 ]
do
	echo " contador : $count"
	((count++))
done


for i in {1..5};
do
	echo $i;
done




