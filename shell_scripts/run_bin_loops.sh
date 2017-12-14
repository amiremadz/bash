#!/bin/bash

CYCLES=100
sizes=(8, 16, 32, 64, 128)
bacthes=(10, 100, 1000, 10000, 100000)

export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:/home/em/x86:.

ROOT=/home/em/x86

OUTPUT=results.txt

rm $OUTPUT

for SIZE in "${sizes[@]}"
do
    for BATCH in "${bacthes[@]}"
    do
        echo $SIZE $BATCH
        ${ROOT}/bench -xsize=$SIZE -ysize=$SIZE -rank=2d -cycles=$CYCLES -batch=$BATCH &>>${OUTPUT}
    done
done 
