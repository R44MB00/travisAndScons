"""
Title:  self describing number
CodeEval:easy
url: https://www.codeeval.com/open_challenges/40/
"""
def describing(file):
    for line in file:
        dic = {}
        dic_con = {}
        self = ""
        line = line.rstrip("\n").rstrip(" ")
        nums = list(line)
        for n in range(len(nums)):
             dic[str(n)] = int(nums[n])
             dic_con[str(n)] = 0
        for n in range(len(nums)):
            if nums[n] in dic_con:
                dic_con[nums[n]] += 1
        for val in range(len(nums)):
            if dic[str(val)] == dic_con[str(val)]:
                self += str(1)
            else:
                self += str(0)
        if "0" in self:
            print "0"
        else:
            print "1"

#-----------------------TestCase---------------------------
path = raw_input("Plase enter the url to the file: ")
file = open(path)
describing(file)
#-----------------------EndTescase---------------------------
