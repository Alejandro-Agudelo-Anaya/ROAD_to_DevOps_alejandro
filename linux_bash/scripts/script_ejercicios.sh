echo "Hola mundo desde bash"

date

read -p "dime tu nombre " nombre

echo "Tu nombre es $nombre"

read -p "dime un numero " num1

read -p "dime un otro numero " num2

sum=$((num1+num2))
resta=$((num1-num2))
multi=$((num1*num2))
division=$((num1/num2))

echo "esta es la suma $sum ; la resta $resta ; la multiplicacion es $multi ; la division es $division"

echo "aqui tienes el primero argumento $1 y el segundo argumento $3; para un total de $@"


sum=$(($1+$2))
resta=$(($1-$3))
multi=$(($3*$2))
division=$(($3/$1))
echo "esta es la suma2 $sum ; la resta2 $resta ; la multiplicacion2 es $multi ; la division2 es $division"

touch hola 

echo "hola alejandro" >> hola

ls

cat hola

