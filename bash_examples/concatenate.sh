#!/bin/bash

VAR="value"
DEFAULT="NoValue"

# Note that to concatenate strings using variables, and plain text, you
# can use $, followed by curly brackets with the variable name in them.
echo $VARend    # doesn't work, "VARend" is not a variable
echo ${VAR}end  # works: "valueend"
echo start${VAR}end   # works: "startvalueend"
