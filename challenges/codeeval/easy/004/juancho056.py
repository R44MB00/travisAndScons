cont = 0
num = 2
Suma = 0


def Primo(a):
    for x in range (2, a):
        if a % x == 0:
            return False
    return True


while cont < 1000:
    if Primo(num) == True:
        Suma += num;
        cont+= 1
    num+= 1


print(Suma)
 
