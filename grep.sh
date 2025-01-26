#!/bin/bash
if [ $1 == "-h" ]; then
	echo "usage : ./grep.sh {file} {option} {word}"
 	echo " option :"
	echo "-n : show the number of the line . "
 	echo "-w : search for word . "
elif [ $1 ] && [ $2 ] && [ $3 ] ;then
        op=$( cat $1 |grep $2 --color=always $3 )
        echo " $op "
else
        echo " your input are wgron !! "
fi
