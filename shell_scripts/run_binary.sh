#!/bin/bash

for VAR in {1..10}
do
	./test --gtest_filter=api
	echo $VAR
done