#!/bin/bash

### while
COUNTER=0
while [ $COUNTER -lt 10 ];
do
    echo "COUNTER: $COUNTER";
    (( COUNTER+=1 ))
done

### until
COUNTER=10
until [ $COUNTER -lt 0 ];
do
    echo "COUNTER: $COUNTER";
    let COUNTER-=1
done


START=1
END=5

### for
for i in $(ls);
do
    echo "item: $i";
done

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
