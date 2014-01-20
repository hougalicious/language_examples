#!/usr/bin/python3

# open a file
inFile = open('file_read_write.py', 'r')
# 'a' for append
# 'w' for write
# 'r' for read
# 'r+' for read+write
# You can append 'b' to the end of any of these to r/w file as a byte file.
# This should be done for files that contain non-text values


# read an entire file all at once:
fileString = inFile.read()  #optional: read() takes sizeInBytes as arg
print(fileString)


# Go to the 1st byte of the file (byteNum is zero-indexed)
inFile.seek(0)  # same as inFile.seek(1, 0)
# 2nd arg: '2' means file end, '1' means cur position, '0' means beginning
#inFile.seek(-3, 2)     # 3rd byte before the end
print(inFile.tell()) # gives current position in file, should be 0 now


# read one line in a file:
fileString = inFile.readline()
print(fileString)
inFile.seek(0)  # reset file for next example

# read in the lines in a file into a list:
for line in inFile.readlines():
    print(line, end='')     # end='' avoids 2x linebreaks
inFile.seek(0)
# OR:
for line in list(inFile):
    print(line, end='')
inFile.seek(0)


# loop over the lines in the file object, being memory efficient - this
# doesn't read all the lines in at once!
for line in inFile:
    print(line, end='')     # end='' avoids 2x linebreaks
inFile.seek(0)


# write to a file:
outFile = open('outFile.example', 'w')  # overwrites file if it exists
outFile.write('This is a test of writing to a file.')
outFile.write('\nDon\'t forget to manually add newlines yourself!\n')


# close a file when you're done with it
outFile.close()
inFile.close()
