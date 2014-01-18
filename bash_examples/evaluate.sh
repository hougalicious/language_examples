#!/bin/bash

# $((expression)) is the syntax to evaluate an expression

TWO=2
THREE=3

echo $((1+2+1))         #4
echo $((TWO+3))         #5, no dollar sign to eval variable
echo $((TWO+$THREE+1))  #6
echo $(($TWO+THREE+2))  #7
echo $(($TWO$THREE))    #23, dollar signs to separate variables

echo $((TWO$THREE+1))       #1, since TWO$THREE evaluates to 0

# Bash variables are character strings, but depending on context, 
# it allows arithmetic operations and comparisons on them.
echo $(($TWO$THREE+1))      #24
echo $(( $(($TWO$THREE)) + 1)) #24
