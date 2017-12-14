#!/bin/bash
FILE=$1
if [ -f ${FILE} ]
then
	echo "${FILE} is a regular file."
	echo $(ls -l ${FILE})
fi
