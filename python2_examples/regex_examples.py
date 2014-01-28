#!/usr/bin/python

import re

myRegex = re.compile('[a-zA-Z]+')
matches = myRegex.search("word notword1 word2");
print(matches.group())  # prints only the first match

matches = myRegex.findall("word partialword1 pword2");
print(matches)  # list
