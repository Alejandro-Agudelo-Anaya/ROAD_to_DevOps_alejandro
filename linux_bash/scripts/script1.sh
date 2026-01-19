#!/bin/bash
# Mi primer script

echo "Hola, este es mi primer script en bash"

date

echo "Tu directorio actual es $(pwd)"

echo "Mi nombre es $name"

a=5
b=3
let sum=a+b
echo "la suma es $sum"
sum2=$((a*b))
echo "la suma es $sum2"
