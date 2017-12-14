#!/bin/bash
read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix: " PREFIX

if [ -z ${PREFIX} ]
then
	PREFIX=$(date +%F)
fi

for FILE in *.${EXTENSION}
do
	echo "Renaming ${FILE} to ${PREFIX}${FILE}"
	mv ${FILE} ${PREFIX}${FILE}
done
