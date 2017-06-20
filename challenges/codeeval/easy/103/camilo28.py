"""
Title: LOWEST UNIQUE NUMBER
URL: https://www.codeeval.com/open_challenges/103/
"""
import sys
def unique(arr):
        """
        this function return the unique number
        hint: Bit manipulation
        """
        repeat = {}
        for dummy_idx in arr:
            repeat[dummy_idx] = 0
        for dummy_idx in arr:
            repeat[dummy_idx] += 1
        mini = float("inf")    
        for key, value in repeat.items():
            if value == 1:
                if key < mini:
                    mini = key
        if mini == float("inf"):
            return 0
        return arr.index(mini) + 1
"""
def read(inp):
    for line in inp:
        line = map(int, line.rstrip().split(" "))
        print unique(arr)


inp = open(sys.argv[1])
read(inp)
"""
arr = [1,1,2,3,4,4,2,4,3,2,1]
print unique(arr)
