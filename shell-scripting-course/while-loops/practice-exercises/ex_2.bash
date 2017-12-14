#!/bin/bash
FILE="/etc/passwd"
read -p "How many lines of ${FILE} would you like to see? " TOTAL_LINE
LINE_NUM=0
while read LINE
do
	((LINE_NUM++))
	if [ ${LINE_NUM} -le ${TOTAL_LINE} ]
	then 
		echo ${LINE}
	else
		break
	fi
done < ${FILE}
