"""
title: Color Code Converter
url: https://www.codeeval.com/open_challenges/148/
"""
#This lib permit search in a text a substring
import re
#this lib permit convert colors in diferrent format
import colorsys as c
def color_conver(file):
    """
    This function convert distint format of color to RGB in scale 255
    file: rute to the testcase
    return: colors in rgb
    """
    for line in file:
        line = line.rstrip("\n")
        if re.findall('HSL', line):
            res =  line.split(",")
            result = []
            #using porcentage
            r1 = int(res[0][4:])
            g1 = int(res[1])
            b1 = int(res[2][0:-1])
            r,g,b = convert_porce(r1,b1,g1)
            r,g,b = c.hls_to_rgb(r, g , b)
            print "RGB(%d,%d,%d)" % (int(round(r*255)) , int(round(g*255)),int(round(b*255)))

        elif re.findall('HSV', line):
            res =  line.split(",")
            r1 = int(res[0][4:])
            g1 = int(res[1])
            b1 = int(res[2][0:-1])
            r,g,b = convert_porce(r1,g1,b1)
            r,g,b= c.hsv_to_rgb(r,g,b)
            print "RGB(%d,%d,%d)" % (int(round(r*255)) , int(round(g*255)),int(round(b*255)))
        elif line[0] == "#":
            rgb = map(int,hex_to_rgb(line).split(","))
            print "RGB(%d,%d,%d)" % (rgb[0],rgb[1],rgb[2])
        else:
            res =  line.split(",")
            c1 = float(res[0][1:])
            m1 = float(res[1])
            y1 = float(res[2])
            k1 = float(res[3][0:-1])
            r,g,b = cmyk_to_rgb(c1,m1,y1,k1)
            print "RGB(%d,%d,%d)" % (int(round(r)) , int(round(g)),int(round(b)))

def hex_to_rgb(hex):
    """
    this function convert from hex to rgb
    formule: strip in 3 parts and convert to dec
    """
    hex = hex.lstrip("#")
    rgb = ""
    #split in 3 parts
    for id_x in range(0,len(hex),len(hex) / 3):
        #convert from hex to decimal
        rgb +=  str(int(hex[id_x:id_x+len(hex) / 3],16)) +  ","
    #print rgb
    return rgb[0:-1]

def cmyk_to_rgb(c,m,y,k):
    """
    this fucntion convert from cmyk to rgb
    formule: scale_rgb * (1-value)*(1-k)
    """
    r = 255 * ((1 - c) * (1 - k))
    g = 255 * ((1 - m) * (1 - k))
    b = 255 * ((1 - y) * (1 - k))
    return r,g,b

def convert_porce(r,g,b):
    """
    this fuction convert the values to the scale rgb
    formule: r * 360, g * 100, b * 100 when format is HSV or HSL
    """
    r = r / float(360)
    g = g / float(100)
    b = b / float(100)
    return r,g,b

#----------------------------test---------------------------
path = raw_input("Please enter the rute to the file: ")
file = open(path)
color_conver(file)
#----------------------------endtest------------------------
