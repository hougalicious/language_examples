#!/bin/bash

# Read in a file line by line (file specified as input after "done")
while read LINE; do
    echo $LINE
done < ./read_from_file.sh

# Read an entire file line by line, but into multiple fields (using IFS
# variable which specifies the line content's delimiter).  Split on
# IFS, and when you're at the last variable, include the rest of the line
# into it, regardless of whether or not it contains more delimiting
# characters. Example:
# value1,value2,value3 <-- contents of csv file
# if we read that into two variables, value1 is put into the first, and
# the rest of the line, "value2,value3", is put into the second.
OLDIFS=IFS
IFS=,
while read v1 v2; do
    echo "echoing variables::: v1: $v1, v2: $v2"
    #read word1 word2 word3 < `echo $LINE`
    #echo "$word1 PEW $word2 PEW $word3"
done < ./csv.csv
IFS=OLDIFS
