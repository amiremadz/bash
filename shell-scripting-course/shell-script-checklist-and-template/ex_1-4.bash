#!/bin/bash
VAR="Shell Scripting is Fun!"
echo ${VAR}
HOST=$(hostname)
echo "This is running on ${HOST}."
FILE="/etc/shadow"
if [ -e ${FILE} ]
then
	echo "Shadow passwords are enabled."
	if [ -w ${FILE} ]
	then
		echo "You have permissions to edit ${FILE}."
	else
		echo "You do NOT have permissions to edit ${FILE}."
	fi
fi
