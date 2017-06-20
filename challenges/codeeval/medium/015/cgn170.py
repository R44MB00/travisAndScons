"""
Title: Endianness
url: https://www.codeeval.com/open_challenges/15/
"""
import sys

def endianness():
    """
    This function compute the endianness of a system
    """
    result = sys.byteorder
    if result == "little":
        print "LittleEndian"
    else:
        print "BigEndian"

endianness()
