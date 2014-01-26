#!/usr/bin/python2

### list comprehensions: make a list of x^2 for [1..10]
# The long way:
squares = []
for x in range(1,11):
    squares.append(x**2)
print(squares)

# The list comprehension way:
squares = [x**2 for x in range(1,11)]

###


