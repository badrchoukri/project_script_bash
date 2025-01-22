#!/bin/bash
if [ $1 == "-h" ]; then
	echo "usage : ./grep.sh (execut the script)"
 	echo " option :"
	echo "-n : show the number of the line . "
 	echo "-w : search for word . "
fi

echo " what is the file path : "
read  file

echo " what is the word that you looking for :"
read  word

echo " what is the option that you want : "
read  option

if [ $file ] && [ $word ] && [ $option ] && [ ! $1 = "-h" ] ;then
	op=$( cat $file |grep $option --color=always $word )
	echo " $op "
else
	echo " your input are wgron !!! "
fi
