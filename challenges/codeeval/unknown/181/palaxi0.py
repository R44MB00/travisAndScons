dictionary = " !\"#$%&'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
line = test
word = line.split(";")[1]
sizeword = len(word)
indexs= [int(i) for i in (line.split(";")[0]*sizeword)[:sizeword]]
decoded_string = ""
for i in range(0,sizeword):
    decoded_string+=dictionary[dictionary.index(word[i])-indexs[i]]
    
print decoded_string