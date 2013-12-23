#!/bin/bash

VAR="value"
DEFAULT="NoValue"

# concatenate to variable value
echo $VAR
echo $VARend    # doesn't work
echo ${VAR}end  # works!
echo start${VAR}end   # also works!
