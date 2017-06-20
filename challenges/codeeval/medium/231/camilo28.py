"""
Title: Meet Cocktail sort
url: https://www.codeeval.com/open_challenges/231/
"""
def coktail_sort(file):
    """
    This fuction implement the coktail sort by iterations
    return: the list sort
    """
        for line in file:
            line = line.rstrip("\n").split('|')
            nums = line[0].split(' ')
            con =  int(line[1])
            nums.pop()
            nums = map(int, nums)
            #iterations
            while con > 0:
                sort(nums)
                con -= 1
            #return
            print " ".join(map(str,nums))

def sort(nums):
    """
    implementation the coktail sort algorithm
    input: list the nums
    output: sort list
    """
    limi = range(len(nums) - 1)
    for num in (limi, reversed(limi)):
        so = False;
        for id_x in num:
            if nums[id_x] > nums[id_x + 1]:
                nums[id_x], nums[id_x + 1] = nums[id_x + 1], nums[id_x]
                so = True
        #break when the list is sort
        if not so:
            return

#------------------------test----------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
coktail_sort(file)
#-------------------unit_test---------------------------
#lis = [5, 4, 9, 10, 7, 3, 2, 1, 6]
#sort(lis, 1)
#print lis
#list2 = [9, 8, 7, 6, 5, 4, 3, 2, 1]
#sort(list2, 5)
#print list2
#----------------------end_unit_test----------------------
#-----------------------endtest---------------------------
