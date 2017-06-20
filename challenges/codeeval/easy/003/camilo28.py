"""
sum the firts 1000 primes
"""

def primes(num):
    count = 0
    if num == 0 or num == 1:
        return False
    else:
        
        for div in range(1, num+1):
            if num % div == 0:
                count += 1
        if count == 2:
            return True
        else:
            return False
    
def firts_primes():
    nums = []
    con = 0
    while len(nums) < 1000:
        if primes(con) == True:
            nums.append(str(con))
        con +=1 
    return nums        

def ispalindrome():
    palindromes = []
    for num in firts_primes():
            reverse = ""
            if len(num) == 1:
                palindromes.append(int(num))
            else:
                for id_x in range(len(num)):
                    reverse = num[id_x] + reverse
                if num == reverse:
                    palindromes.append(int(num))
    return max(palindromes) 
  
print ispalindrome()                                 
