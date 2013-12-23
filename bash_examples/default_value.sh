#!/bin/bash

DEFAULT="default, VAR had no value"

# var is set initially
VAR="VAR's value is this string"
echo ${VAR:-$DEFAULT} # uses actual value


# unset by using = followed by nothing
VAR=
echo ${VAR:-$DEFAULT} # uses default


# unset by using unset
VAR="VAR's value is this string"
unset VAR
echo ${VAR:-$DEFAULT} # uses default


# Fails, cannot put $ in front of VAR here
#echo ${$VAR:-$DEFAULT} # uses default
