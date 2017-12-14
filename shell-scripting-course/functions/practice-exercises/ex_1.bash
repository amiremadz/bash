#!/bin/bash
file_count(){
	local NUM=$(ls -p | wc -l)
	echo ${NUM}
	return 0
}

file_count
