#!/bin/bash
MESSAGE=${RANDOM}
echo ${MESSAGE}
logger -p user.info "${MESSAGE}"
