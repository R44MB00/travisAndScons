"""
Interrupted burble sort
url: https://www.codeeval.com/open_challenges/158/
"""
def burbble(file):
    """
    This fuction return a list sorted by algorith the burbble sort in small steps
    file: rute to the testcase
    """
    for line in file:
        line = line.rstrip("\n").split('|')
        aux = 0
        #num of steps
        nums = line[0].split(' ')
        con =  int(line[1])
        #print nums
        nums.pop()
        #print con
        while con > 0:
            #burble sort process
            for k in range(len(nums)-1):
                if int(nums[k]) > int(nums[k+1]):
                    aux = nums[k]
                    nums[k] = nums[k+1]
                    nums[k+1] = aux
            con -= 1
        print (" ").join(nums)


#------------------------test----------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
burbble(file)
#-----------------------endtest---------------------------
