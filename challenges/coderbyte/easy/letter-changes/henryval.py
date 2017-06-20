"""This code transform a string in every letter
to its next in the alphabet, then uppercase the vowels"""


def letterchanges(strn):
    """This function makes a really weird transformation to a string"""
    abcd = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
    vow = "aeiou"
    vowup = "AEIOU"
    num = 0
    for i in strn:
        if abcd.find(i) >= 0:
            if num == 0:
                nstr = abcd[abcd.find(i) + 1]
                num = 1
            else:
                nstr += abcd[abcd.find(i) + 1]
        else:
            if num == 0:
                nstr = i
                num = 1
            else:
                nstr += i
    for j in nstr:
        if vow.find(j) >= 0:
            nstr = nstr.replace(j, vowup[vow.find(j)])
    return nstr


print letterchanges(raw_input())
