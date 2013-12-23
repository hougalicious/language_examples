#!/bin/bash

START=1
END=5


# for loop using literal range
for i in {1..5} # this returns the *range* 1 2 3 4 5
do
    echo "pew"
done


# for loop using c-style predicate
for ((c=$START; c<=$END; c++)) # this uses c to iterate from 1 to 5
do
    echo "pew"
done


# for loop using range from variables
for i in $(eval echo "{$START..$END}") # this returns the *range* 1 2 3 4 5
do
    echo "pew"
done
