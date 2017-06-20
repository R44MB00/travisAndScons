"""
Title: Find a write:
CodeEval:easy
url: https://www.codeeval.com/open_challenges/97/
Description: Decrypt a message
"""
def find_write(file):
    """
    file: input with the message code
    key: key for decrypt the message
    """
    for line in file:
        line = line.rstrip("\n").split("|")
        message = line[0]
        message_decode = ""
        key = line[1].split(" ")
        key.remove('')
        for n in key:

            message_decode += message[int(n)-1]
        print message_decode

#-----------------------test-----------------------------
path = raw_input("Please enter the rute to the file")
file = open(path)
find_write(file)
#----------------------endtest...............................
