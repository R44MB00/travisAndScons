__author__ = 'cnoguera'
import sys

valid=[]

def check_number(test,eval_test):
    if len(test)==1:
        result=eval("(((("+test[0]+eval_test)
        if result==42:
            valid.append(1)
            return
    if len(test)>=2:
        for op in operations:
            if op=="*":
                if eval_test=="":
                    check_number(test[0:len(test)-1],"*"+test[len(test)-1]+")")
                else:
                    check_number(test[0:len(test)-1],"*"+test[len(test)-1]+")"+eval_test)
            elif op=="+":
                if eval_test=="":
                    check_number(test[0:len(test)-1],"+"+test[len(test)-1]+")")
                else:
                    check_number(test[0:len(test)-1],"+"+test[len(test)-1]+")"+eval_test)
            elif op=="-":
                if eval_test=="":
                    check_number(test[0:len(test)-1],"-"+test[len(test)-1]+")")
                else:
                    check_number(test[0:len(test)-1],"-"+test[len(test)-1]+")"+eval_test)

file = open(sys.argv[1], 'r')
operations=['*','+','-']

for line in file:
    line=line.rstrip("\n")
    test_list=line.split()
    check_number(test_list,"")
    if(len(valid)>0):
        print "YES"
    else:
        print "NO"
    del valid[:]
file.close()

