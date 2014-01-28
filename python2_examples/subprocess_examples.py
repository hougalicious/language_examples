#!/usr/bin/python

import subprocess

### Call a command and wait for completion
# if not specifying shell, you must type separate words as elements
# of a list - putting "echo pew" would result in trying to call
# the command pew, which doesn't exist
subprocess.call(['echo', 'pew'])
# spaces okay here - you're using the shell
subprocess.call('echo pew', shell=True)

### Call a process into the background
pipe = subprocess.Popen("ls", stdout=subprocess.PIPE, shell=True)
(data, dataFromErr) = pipe.communicate();
# convert it to a python list!
filesList = data.split("\n")
print(filesList)
