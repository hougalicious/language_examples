#!/usr/bin/python

import argparse
import math

exampleNum = 1

# Add positional arguments
# Uses different variable names and metavar names for user readability
if exampleNum == 1:
    argParser = argparse.ArgumentParser()
    argParser.add_argument("numToPower", \
        # description in help \
        help="Display the square of a given number", \
        # displayed to user as var name in help \
        metavar="numberToRaise", \
        type=int)   # all arguments are strings unless otherwise specified
    argParser.add_argument("power", \
        help="exponent for NumberToRaise", \
        type=int)
    args = argParser.parse_args()
    print(int(math.pow(args.numToPower, args.power)))

# arguments preceeded with - or -- must be given an additional value
# argument directly afterward, unless otherwise specified. They are also
# considered optional by default.
# ex: "--numPrints" is invalid, while "--numPrints 3" is valid, unless
# action="store_true" is included in the parameters of add_argument()
elif exampleNum == 2:
    argParser = argparse.ArgumentParser()
    argParser.add_argument("--numPrints", help="Number of times to print the given string", type=int)   # add action="store_true" to not require value
    argParser.add_argument("stringToPrint", help="String to be printed")
    args = argParser.parse_args()
    if args.numPrints:
        for i in range(0, args.numPrints):
            print args.stringToPrint

# Optional - or -- arguments, as discussed above
elif exampleNum == 3:
    argParser = argparse.ArgumentParser()
    argParser.add_argument("-v", "--verbose", \
        help="Operate in verbose mode", \
        action="store_true")
    args = argParser.parse_args()
    # NOTE that args.v is no longer a variable; you must use the name of
    # the first -- argument you specified - in this case, args.verbose.
    # if we'd supplied "--pew", "--verbose" as names, then we'd have to
    # address this argument as args.pew
    if args.verbose:
        print "Verbose mode on"

# restricting values an argument can have with choices=[]
elif exampleNum == 4:
    argParser = argparse.ArgumentParser()
    # require a value, since we don't include action="store_true"
    argParser.add_argument("--verbose", "-v", \
        help="Operate in verbose mode 1, 2, or 3", \
        choices=[1, 2, 3], type=int)
    args = argParser.parse_args()
    if args.verbose == 1:
        print "Verbose mode 1 on"
    elif args.verbose == 2:
        print "Verbose mode 2 on"
    else:
        print "Verbose mode 3 on"

