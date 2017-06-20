"""
Title: Big Digits
url: https://www.codeeval.com/open_challenges/163/
"""
def big_digit(file):
    """
    This function print art ascii
    """
    #dict of nums
    nums = {"0":
"""
-**--
*--*-
*--*-
*--*-
-**--
-----
""".decode('utf-8'),
"1":
"""
--*--
-**--
--*--
--*--
-***-
-----
""".decode('utf-8'),
"2":
"""
***--
---*-
-**--
*----
****-
-----
""".decode('utf-8'),
"3":
"""
***--
---*-
-**--
---*-
***--
-----
""".decode('utf-8'),
"4":
"""
-*---
*--*-
****-
---*-
---*-
-----
""".decode('utf-8'),
"5":
"""
****-
*----
***--
---*-
***--
-----
""".decode('utf-8'),
"6":
"""
-**--
*----
***--
*--*-
-**--
-----
""".decode('utf-8'),
"7":
"""
****-
---*-
--*--
-*---
-*---
-----
""".decode('utf-8'),
"8":
"""
-**--
*--*-
-**--
*--*-
-**--
-----
""".decode('utf-8'),
"9":
"""
-**--
*--*-
-***-
---*-
-**--
-----
""".decode('utf-8')
}
    for line in file:
        line = line.rstrip("\n")
        out = []
        sal0 = ""
        sal1 = ""
        sal2 = ""
        sal3 = ""
        sal5 = ""
        sal6 = ""
        for digit in line:
            if digit in nums.keys():
                out.append(nums[digit].split("\n"))
        for id_x in out:
            sal0 += id_x[1]
            sal1 += id_x[2]
            sal2 += id_x[3]
            sal3 += id_x[4]
            sal5 += id_x[5]
            sal6 += id_x[6]

        print sal0
        print sal1
        print sal2
        print sal3
        print sal5
        print sal6
        #print "-----"



        #print out
#------------------------testcase------------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
big_digit(file)
#---------------------endtestcase------------------------------
