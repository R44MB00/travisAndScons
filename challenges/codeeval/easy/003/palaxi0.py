def isPrime(n):
    if n==2 or n==3: return True
    if n%2==0 or n<2: return False
    for i in range(3,int(n**0.5)+1,2): 
        if n%i==0:
            return False    

    return True

def isPalin(num):
    if str(num) == str(num)[::-1]:
        return True

mas = 0
for i in range(2,1000,1):
    if isPalin(i) and isPrime(i):
        mas=i
print (mas)
