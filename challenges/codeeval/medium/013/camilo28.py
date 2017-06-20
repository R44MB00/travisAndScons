"""
Write a program which removes specific characters from a string. 
"""
def remove_char(file):
    for line in file:
        out = ""
        tem = []
        word = line.rstrip('\n').split(',')
        for id_x in word[1]:
            if not id_x == " ":
                tem.append(id_x)
        for id_y in word[0]:
            if not id_y in tem:
                
                out = out + id_y
        print out
        
rute = raw_input("Please enter the rute to the file: ")
file = open(rute)
remove_char(file)
    
