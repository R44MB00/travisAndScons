"""
Title: Cash Register
url: https://www.codeeval.com/open_challenges/54/
"""
def cash_register(file):
    """
    This fuction
    return the money
    """
    try:
        money =  {0.01:"PENNY",0.05: "NICKEL",0.10:"DIME", 0.25: "QUARTER", 0.50:"HALF DOLLAR", 1.00:"ONE",
            2.00: "TWO", 5.00: "FIVE", 10.00: "TEN", 20.00:"TWENTY", 50.00:"FIFTY", 100.00: "ONE HUNDRED"}
        for line in file:
            line = line.rstrip("\n").split(";")
            pp = float(line[0])
            ch = float(line[1])
            if pp > ch:
                print "ERROR"
            elif pp == ch:
                print "ZERO"
            else:
                result = ch - pp
                out = []
                while True:
                    if result in money.keys():
                        out.append(money[result])
                        print "".join(out)
                        break
                    else:
                        d =  susb(money,result)
                        print ",".join(d)
                        break

    except Exception as e:
        print "uppps :(", e

def susb(dict,num):
    """
    this fuction compute the money to returned when the pp not is exact
    """
    dic = sorted(dict.keys(),reverse=True)
    con = 0
    res = []
    out = []
    while con <= len(dic) -1 :
        if num > dic[con]:
            num = num - dic[con]
            res.append(dic[con])
        con +=1
    for id_x in sorted(res,reverse=True):
        out.append(dict[id_x])
    return out

#---------------testcase--------------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
cash_register(file)
#---------------endtestcase----------------------------
