__author__ = 'cnoguera'
n=0
suma=0
i=2
while n<1000:
    cont=0
    for j in range(2,i,1):
        if (i%j)==0:
            cont+=1
    if cont==0:
        suma=suma+i
        n+=1
    i+=1
print suma
