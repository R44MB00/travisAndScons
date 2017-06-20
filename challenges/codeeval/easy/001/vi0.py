import sys

def fizz_buzz(x,y,number):
    if number % x == 0 and number % y == 0:
        return "FB"
    elif number % x == 0:
        return "F"
    elif number % y == 0:
        return "B"
    else:
        return str(number)

endrow = []
if __name__ == '__main__':
    fd = open(sys.argv[1])
    for line in fd.readlines():
        line = line[:-1]
        [x,y,n] = line.split(' ')
        for count in range(1,int(n)+1):
           endrow.append(fizz_buzz(int(x),int(y),int(count)))
        print " ".join(endrow)
        endrow = []
