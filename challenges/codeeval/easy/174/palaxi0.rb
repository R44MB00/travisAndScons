stringe = "Usu ei scripta phaedrum, an sed salutatus definiebas? Qui ut recteque gloriatur reformidans. Qui solum aeque sapientem cu."
cont = 1
newstring =""
dicci = {1:', yeah!',2:', this is crazy, I tell ya.',3:', can U believe this?',
4:', eh?',5:', aw yea.',6:', yo.',7:'? No way!',8:'. Awesome!'}
for item in stringe:
    if cont > 8:
        cont = 1
    if item == "." or item == "?" or item == "!":
        newstring += dicci[cont]
        cont +=1
    else:
        newstring += item
print (newstring)
