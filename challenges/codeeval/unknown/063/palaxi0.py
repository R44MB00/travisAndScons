
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        ints =test.strip().split(",")
        low = int(ints[0])
        up = int(ints[1])

        def isPrime(n):
            if n==2 or n==3: return True
            if n%2==0 or n<2: return False
            for i in range(3,int(n**0.5)+1,2): 
                if n%i==0:
                    return False    
        
            return True
            
        count =0
        for i in range(low,up+1):
            if isPrime(i):
                count+=1
        
        print (count)