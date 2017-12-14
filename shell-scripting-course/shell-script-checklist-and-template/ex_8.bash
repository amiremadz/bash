#!/bin/bash
for FILE in $@
do
	if [ -f ${FILE} ]
	then
		echo "${FILE} is a regular file."
		echo $(ls -l ${FILE})
	fi
done 
