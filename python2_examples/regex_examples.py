#!/usr/bin/python

import re

myRegex = re.compile('[a-zA-Z]+')
#myRegex = re.compile('([]|[a-z])+')
matches = myRegex.search("word notword1 word2");
print(matches.group())  # prints only the first match

matches = myRegex.findall("word notword1 word2");
print(matches)  # list
