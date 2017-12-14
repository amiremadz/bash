#!/bin/bash
read -p "File name: " FILE
if [ -f ${FILE} ]
then
	echo "It is a regular file."
	echo $(ls -l ${FILE})
fi
