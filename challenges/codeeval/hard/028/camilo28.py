"""
Title: String Search
CodeEval: Hard
Url: https://www.codeeval.com/open_challenges/28/
"""
import re
def search(file):
    """
    should accept as its first argument a path to a filename
    """
    for line in file:
                sentense = line.rstrip('\n').split(",")
                try:
                    palabra = ""

                    for char in sentense[1]:
                            if len(palabra) > 0 and palabra[-1] == "*":
                                if not char == "*":
                                    palabra = palabra + char
                            else:
                                palabra = palabra + char

                    if palabra[0] == " ":
                                #print palabra
                                palabra = palabra[1:len(palabra)]

                    if palabra[0] == "*":
                                palabra = " "


                    if(re.findall(palabra, sentense[0])):
                                print "true"
                    else:
                                print "false"
                except Exception:
                    print sentense[0], sentense[1]


rute = raw_input("Please enter the rute of the file: ")
file = open(rute)
search(file)
