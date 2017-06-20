def black_cards(arr, key):
    con = 0
    sub = 0
    while len(arr) > 1:
        print arr, con
        if con >= len(arr):
            con = 0
        if sub == key-1:
            arr.pop(con)
            sub = 0
            con = 0
        con +=1 
        sub +=1
    return arr[0]

def read(file):
    for line in file:
        sub = line.split("|")
        arr = sub[0],split(" ")
        key = int(sub[1])
        black_cards(arr, key)
        
file = open(sys.argv[1])
read(file)
"""
arr = ["John", "Sara", "Tom", "Susan"]
key = 5
print black_cards(arr, key)
arr = ["John", "Tom", "Mary"]
key = 5
print black_cards(arr, key)
"""
        
