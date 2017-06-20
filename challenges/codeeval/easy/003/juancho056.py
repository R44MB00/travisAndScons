cont = 999
resultado= False


def Primo(a):
    for x in range (2, a):
        if a % x == 0:
            return False
    return True

while resultado != True:
    if Primo(cont) == True:
        string = str(cont)
        if string[0] == string[2]:
            resultado = True
    cont-=1

print(string)
