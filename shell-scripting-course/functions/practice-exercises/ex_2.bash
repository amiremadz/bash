#!/bin/bash
file_count(){
	DIR=$1
	NUM=$(ls ${DIR} | wc -l)
	echo "${DIR}:"
	echo ${NUM}
	return 0
}
file_count /etc
file_count /var
file_count /usr/bin
