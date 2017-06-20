__author__ = 'cnoguera'
import sys
import collections

file = open(sys.argv[1], 'r')
change_list = {.01:'PENNY',.05:'NICKEL',.10:'DIME',.25:'QUARTER',.50:'HALF DOLLAR',1.00:'ONE',2.00:'TWO',5.00:'FIVE',10.00:'TEN',20.00:'TWENTY',50.00:'FIFTY',100.00:'ONE HUNDRED'}
change_list=collections.OrderedDict(sorted(change_list.items()))

for line in file:
    line=line.rstrip("\n")
    list_test=line.split(";")
    pp=float(list_test[0])
    ch=float(list_test[1])

    if pp>ch:
        print "ERROR"
    elif pp==ch:
        print "ZERO"
    else:
        change=ch-pp
        answer=[]
        while change>0:
            tempk=0.01
            tempv="PENNY"
            for key,value in change_list.iteritems():
                if key==change:
                    answer.append(value)
                    change=float("{0:.2f}".format((change-key)))
                    break
                elif key>change:
                    answer.append(tempv)
                    change=float("{0:.2f}".format((change-tempk)))
                    break
                tempk=key
                tempv=value
        print ",".join(answer)
file.close()
