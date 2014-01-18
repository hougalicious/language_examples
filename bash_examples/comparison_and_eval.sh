#!/bin/bash

#BINARY:
# less than:                -lt     \<
# less than or equal to:    -le
# greater than:             -gt     \>
# greater than or equal to: -ge
# equal to:                 -eq     =
# not equal to:             -ne     !=
# and:                      -a      &&
# or:                       -o      ||
# file1 newer than file2:   -nt
# file1 older than file2:   -ot
# file1 hard link to file2: -ef

#UNARY:
# not:                      !
# null STRING:              -z
# STRING not empty:         -n
# file exists:              -e      -a
# file is directory:        -d
# "     " regular file:     -f
# "     " symbolic link:    -h      -L
# "     " named pipe:       -p
# "     " readable by you:  -r
# "     " writable by you:  -w
# "     " not empty:        -s
# "     " socket:           -S
# "     " has been modified
#since last being read      -N


### "test expr" and "[ expr ]"
# test expr   and   [ expr ]   are equivalent
# NOTE: these return 0 for TRUE and 1 for FALSE
# NOTE: You cannot use "&&" or "||" with these; you must use "-a" or "-o"
# NOTE: the spaces after "[" and before "]" must be present
test 0 -lt 1; echo $?;  # $? holds return value of prev. statement
[ 0 -lt 1 ]; echo $?;

### Combining predicates
# You must either escape parenthesis or surround them in quotes
[ \( 0 -lt 1 \) -a "(" 1 \< 2 \) ]; echo $?;
[ "(" 0 -lt 1 ")" -a \( 3 -gt 2 \) ]; echo $?;


### if/then/fi
if [ 0 -lt 1 ];
then
    echo "if/then/fi";
else
    echo "if/then/else/fi";
fi


### (( expr ))
# Evaluates an ARITHMETIC expression and sets exit status to 1 if the
# expr evaluates to 0, and 0 if it evaluates to non-zero... yay for
# being backwards.
# NOTE: Assignment, increment, decrement should be done in ((, not in [[
let x=2 y=2**3 z=y*3; echo $x $y $z
(( w=(y/x) + ( (~ ++x) ) )); echo $x $y $w

### [[ expr ]]
# For bash CONDITIONAL expressions with more powerful and C-like syntax
# NOTE: You can use && and || as "and" and "or" within (( and [[
# NOTE: You don't have to escape parenthesis either
[[ ( -d $HOME ) && ( -w $HOME ) ]] && echo "HOME is a writable directory";

# [[ expr ]] can also do pattern matching on strings when the = and !=
# operators are used
[[ ( "abc" = "abc" ) && ( "abc" != "def" ) ]]; echo $?;


### Evaluting expressions using variables and numbers
TWO=2
THREE=3

echo $((1+2+1))         #4
echo $((TWO+3))         #5, no dollar sign to eval variable
echo $((TWO+$THREE+1))  #6
echo $(($TWO+THREE+2))  #7
echo $(($TWO$THREE))    #23, dollar signs to separate variables

echo $((TWO$THREE+1))   #1, since TWO$THREE evaluates to 0

# Bash variables are character strings, but depending on context, 
# it allows arithmetic operations and comparisons on them.
echo $(($TWO$THREE+1))          #24
echo $(( $(($TWO$THREE)) + 1))  #24
