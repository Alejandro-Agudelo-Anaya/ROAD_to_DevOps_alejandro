#!/bin/bash


my_funtion() {
	echo "hola funcion"
}

my_funtion_with_params(){
	echo "hola $1"
}
my_return(){
	return 1
}



my_funtion_with_params $1

my_funtion

my_return
echo $?




