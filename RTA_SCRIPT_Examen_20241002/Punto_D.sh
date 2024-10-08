#! /bin/bash
echo "Creo la estructura de directorios"
mkdir -p $HOME/Estructura_Asimetrica/{{correo,clientes}/cartas_{1..100},correo/carteros_{1..10}}

echo "Muestro la estructura de los directorios"
tree $HOME/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 90 --column 4

