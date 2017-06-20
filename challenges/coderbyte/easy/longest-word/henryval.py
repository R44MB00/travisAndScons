"""This code finds the longest word in a string"""


def longestword(sen):
    """This function returns the longest word in a string"""
    return sen.split()[map(len, sen.split()).index(max(map(len, sen.split())))]


print longestword(raw_input())
