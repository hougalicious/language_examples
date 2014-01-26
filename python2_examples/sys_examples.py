#!/usr/bin/python

import sys

#print arguments
print(sys.argv[0])

#redirect stdout
sys.stdout = sys.stderr     # must be something with a write() method
print("pew")    # now prints to stderr
