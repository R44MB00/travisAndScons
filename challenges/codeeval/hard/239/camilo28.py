"""
Title: AS QUICK AS A FLASH
url: https://www.codeeval.com/open_challenges/239/
"""
#Count is a global variable and return the numbers of pivot
count = []
def read_file(file):
    """
    This is a auxiliar variable
    read the input text
    """
    global count
    for line in file:
        line = map(int,line.rstrip("\n").split(" "))
        #call quicksort function
        quickSort(line)
        print len(count)
        count = []

def quickSort(arr):
    """
    This is the implementation the quickSort O(nlogn)
    """
    global count
    #nums minors to the number
    less = []
    #pivot list
    pivotList = []
    #nums major to the pivot
    more = []
    if len(arr) <= 1:
        return arr
    else:
        #pivot is the firts element in the arr
        pivot = arr[0]
        for i in arr:
            #if elements are minor o major to the pivot
            if i < pivot:
                less.append(i)
            elif i > pivot:
                more.append(i)
            else:
                pivotList.append(i)
        #divide and conquer implementation        
        less = quickSort(less)
        more = quickSort(more)
        count.append(pivotList)
        return less + pivotList + more

#-----------------testing----------------------------    
path = raw_input("Please enter the rute to the file: ")
file = open(path)
read_file(file)
#-----------------end-testing------------------------
