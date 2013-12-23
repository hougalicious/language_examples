#!/usr/bin/python3
import sys

basket = ('Apple', 'Orange', 'Banana')

#******************************************************************************
##### Printing all items in a tuple

# Method 1
for i in range (0, len(basket)-1):
    sys.stdout.write(basket[i] + ", ")  #to leave off the newline
print (basket[len(basket)-1] + ".")


# Method 2, much shorter:
print(*basket, sep=", ", end=".\n")


# NOTE: The * operator unpacks the object, so you can get slices
# of it if you only want to use a certain range
print(*(basket[0:2]), sep=", ", end=".\n")

#*******************************************************************************


