#!/bin/bash
#AGUSTIN ROBAINA

if  [ -d $1 ];then
echo "Es un directorio"
elif [ -f $1  ];then
echo "Es un archivo"
else
echo "No existe"
fi


