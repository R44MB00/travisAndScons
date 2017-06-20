import sys

def is_self_describing(number):
    
    lenght = len(number)
    
    for i in range(0, lenght):
        
        n = number[i]
        count = number.count(str(i))

        # $i debe estar $count veces en $n
        if str(count) != n:
            return 0
        

    return 1


if __name__ == '__main__':
    test_cases = open(sys.argv[1], 'r')
    for line in test_cases:
        print is_self_describing(line.strip())
 
    test_cases.close()
