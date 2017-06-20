
def sum_file(file):
    """
    sum numbers of a file
    """
    vector = []
    for line in file:
        number = line.rstrip('\n')
        vector.append(int(number))
    return sum(vector)

rute = raw_input("Please enter the rute of the file: ")
file = open(rute)
print sum_file(file)
        
