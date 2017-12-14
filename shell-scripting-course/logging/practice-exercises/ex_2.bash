#!/bin/bash
logit(){
	local MESSAGE="Random number: ${RANDOM}"
	echo ${MESSAGE}
	logger -p user.info -i -t randomly "${MESSAGE}" 
}
logit
logit
logit
