"""
Title: Decode numbers
url: https://www.codeeval.com/open_challenges/73/
"""
def decode(file):
    """
    this fuction decode a message
    file: testcase input
    """
    for line in file:
        message = line.rstrip("\n")
        print len(str(message_d(message)).split(","))

def message_d(message):
    """
    This fuction create the new substring recursive
    """
    length = 1
    #aux save the posibles out
    aux = []
    while True:
        char = message[0:length]
        #whether char is major to length of message break
        if not len(char) == length:
            break
        #whether the char is major to 26 not is a letter of alphabet
        if int(char) <= 26:
            aux.append(message_d(message[length:len(message)]))
        length += 1
    return aux

#------------------------testcase------------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
decode(file)
#---------------------endtestcase------------------------------
