"""
Title: Valid parentheses
url: https://www.codeeval.com/open_challenges/68/
"""
def check_bracket(file):
    """
    hint: use stack --> LIFO
    """
    for line in file:
        line = line.rstrip()
        line_aux = ""
        for cha in line:
            if (cha == "(" or cha == "[" or  cha == "{" or cha == ")"
            or cha == "]" or cha == "}"):
                line_aux += cha
        if balance(line_aux) == 1:
             print "True"
        else:
             print "False"


def balance(line):
    """
    This is a auxiliar fuction
    """
        stack = []
        out = []
        for character in line:
            if character in ['(','[','{']:
                stack.append(character)
            #print character
            #print stack
            else:
                if stack == []:
                    break
                else:
                    top = stack.pop()
                    if (top == "(" and character != ")") or (top == "[" and
                    character != "]") or (top == "{" and character != "}"):
                            #print top, character
                            out.append(0)
                    else:
                            out.append(1)
        if out == []: return 0
        return min(out)

#----------------testcase-----------------------------
rute = raw_input("Please enter the rute to the file: ")
file = open(rute)
check_bracket(file)
