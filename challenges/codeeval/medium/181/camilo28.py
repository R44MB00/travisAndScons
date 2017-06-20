"""
Title: Gronsfeld cipher
url: https://www.codeeval.com/open_challenges/181/
"""
def cipher(file):
    """
    This fuction decipher a message used the Gronsfeld algorithm
    return: the message decrypt
    """
    try:
        #asc = [chr(id_x) for id_x in range(32,123)]
        asc = list(" !\"#$%&'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
        #print asc
        for line in file:
            line = line.rstrip("\n").split(";")
            message = line[1]
            #key tho decipher
            key = line[0]
            con = 0
            #output
            out = ""
            cipher = []
            #when the length of the key is minor to message is necesary clone
            for letter in message:
                if not con <= len(key)-1:
                    con = 0
                cipher.append(key[con])
                con +=1
            #cipher character - key = Decipher character
            for letter in range(len(message)):
                out += asc[asc.index(message[letter]) - int(cipher[letter])]
            print out
    except Exception as e:
        print "uppps :(", e


#---------------testcase--------------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
cipher(file)
#---------------endtestcase----------------------------
