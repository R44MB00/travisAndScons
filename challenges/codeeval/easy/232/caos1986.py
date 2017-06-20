import sys

def xsort(a,n):
   count=0
   i=0
   aux=0
   while count<n:
       if i==len(a)-1:
           break
       if int(a[i])>int(a[i+1]):
           aux=a[i]
           a[i]=a[i+1]
           a[i+1]=aux
           i=0
           count+=1
       else:
           i+=1
   return a

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        test=test.split("|")
        a=xsort(test[0].strip().split(" "),int(test[1]))
        s=""
        for i in a:
            s+=i+" "
        print s
