
import sys
import colorsys


def hsl_to_rgb(value):
	value = value.replace("HSL","").replace("(","").replace(")","").strip().split(",")
	RGB = (colorsys.hls_to_rgb(float(value[0])/360.0, float(value[1])/100.0, float(value[2])/100.0))
	return tuple(int(round(i * 255,0)) for i in RGB)
	

def hsv_to_rgb(value):
	value = value.replace("HSV","").replace("(","").replace(")","").strip().split(",")
	RGB = colorsys.hsv_to_rgb(float(value[0])/360.0, float(value[1])/100.0, float(value[2])/100.0)
	return tuple(int(round(i * 255,0)) for i in RGB)
	

def cmyk_to_rgb(value):
	value = value.replace("(","").replace(")","").split(",")
	RGB = [0] * 3
	
	RGB[0] = 255.0 * (1.0-(float(value[0]))) * (1.0-(float(value[3]))) 
	RGB[1] = 255.0 * (1.0-(float(value[1]))) * (1.0-(float(value[3])))
	RGB[2] = 255.0 * (1.0-(float(value[2]))) * (1.0-(float(value[3])))
	return tuple(int(round(i,0)) for i in RGB)


def hex_to_rgb(value):
	value = value.replace("#","")
	RGB = []
	RGB.append(value[0:2])
	RGB.append(value[2:4])
	RGB.append(value[4:6])

	return tuple(int(i, 16) for i in RGB)

with open('test.txt', 'r') as test_cases:
#with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
    	test = test.strip()
    	if "HSL" in test:
    		print ("RGB"+str((hsl_to_rgb(test))).replace(" ",""))
    	elif "HSV"  in test:
    		print ("RGB"+str((hsv_to_rgb(test))).replace(" ",""))
    	elif "#" not in test:
    		print ("RGB"+(str(cmyk_to_rgb(test))).replace(" ",""))
    	else:
    		print ("RGB"+str(hex_to_rgb(test)).replace(" ",""))
