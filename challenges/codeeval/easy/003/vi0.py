import math

def is_prime(number):
    if number % 2 == 0:
        return False
    for x in range(2, int(math.sqrt(number) + 1)):
        if number % x == 0:
            return False
    return True

def is_palindrome(number):
    if number == int(str(number)[::-1]):
        return True
    return False

def main():
    limit = 1000 
    higher = 3
    i=3
    while i < limit:
        if is_prime(i):
            if is_palindrome(i):
                higher = i
        i += 1
    return higher 
print main()
