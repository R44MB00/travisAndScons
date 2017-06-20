import sys
import re
import colorsys
import struct

def cmyk_to_rgb(c,m,y,k):
    r = 255*(1.0-(c+k)/float(100))
    g = 255*(1.0-(m+k)/float(100))
    b = 255*(1.0-(y+k)/float(100))
    return r,g,b

def p_hsl(color_code):
    color_code = color_code.split('(')[1].split(')')[0]
    split = color_code.split(',')
    h = float(split[0])/360.0
    l = float(split[1])/100.0
    s = float(split[2])/100.0
    r, g, b =  colorsys.hls_to_rgb(h, l, s)
    r = int(round(r * 255, 0))
    g = int(round(g * 255, 0))
    b = int(round(b * 255, 0))
    return "RGB("+str(r)+","+str(g)+","+str(b)+")"
    
def p_hsv(color_code):
    color_code = color_code.split('(')[1].split(')')[0]
    split = color_code.split(',')
    h = float(split[0])/360.0
    s = float(split[1])/100.0
    v = float(split[2])/100.0
    r, g, b =  colorsys.hsv_to_rgb(h, s, v)
    r = int(round(r * 255, 0))
    g = int(round(g * 255, 0))
    b = int(round(b * 255, 0))
    return "RGB("+str(r)+","+str(g)+","+str(b)+")"
    
def p_hex(color_code):
    r, g, b = struct.unpack('BBB', color_code[1:].decode('hex'))
    return "RGB("+str(r)+","+str(g)+","+str(b)+")"
    
def p_cmyk(color_code):
    color_code = re.sub('\(', '', color_code)
    color_code = re.sub('\)', '', color_code)
    split = color_code.split(',')
    c = float(split[0])
    m = float(split[1])
    y = float(split[2])
    k = float(split[3])
    r = int(round(255.0 * (1.0-c) * (1.0-k), 0))
    g = int(round(255.0 * (1.0-m) * (1.0-k), 0))
    b = int(round(255.0 * (1.0-y) * (1.0-k), 0))
    return "RGB("+str(r)+","+str(g)+","+str(b)+")"
    
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    # print test
    test=test.strip()
    if test.find("HSL")!=-1:
        r=p_hsl(test)
    elif test.find("HSV")!=-1:
        r=p_hsv(test.strip()[3:])
    elif test.find("#")!=-1:
        r=p_hex(test)
    else:
        r=p_cmyk(test.strip())
    print str(r).replace(" ","")

test_cases.close()
