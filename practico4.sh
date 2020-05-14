#!/bin/bash

OPCIONES="FicheroODirectorio TamanoMB OpcionesScript Saludotty1 Inf.Comando Backup Salir "

select opt in $OPCIONES;do

case $opt in

#OPCION1
FicheroODirectorio)
echo Ha elegido la opcion: Fichero O Directorio
;;


#OPCION 2
TamanoMB)

echo Tamano de fichero/directorio en MB
du -m $1

;;

#OPCION3
OpcionesScript)

echo opcion3

if [ !-n $1 ];then
echo "Ningun parametro ingresado"
echo "Por favor ingrese un comando luego del nombre del script"
echo "practico4.sh + comando a ejecutar" 
fi

;;

#OPCION4
Saludotty1)
echo opcion4

user=$(whoami)
if [ user='agustinrobaina' ]
then
echo "Bienvenido Agustin Robaina"
else
echo "Usted no es Agustin Robaina"
fi

;;

#OPCION5
Inf.Comando)
echo opcion5

if [ -n "$1" ]; then
$1
else
echo "Ningun argumento ingresado"
fi

;;

#OPCION6
Backup)
echo opcion6

user=$(whoami)
date=$

echo $user

tar -czf /home/$user/PracticosSO/backups/backup_home_$(date +%Y-%m-%d_%H%M%S).tar.gz /home/$user

;;

#OPCION7
Salir)
echo Ha salido del programa
break

;;


#DEFAULT)
*)
echo Ingrese una opcion correcta

;;

esac
done
