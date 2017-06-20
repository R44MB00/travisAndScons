import re
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        R = 0
        G = 0
        B = 0
        colors = []
        line = test.strip()
        if line[0] == "(":
            colors = [float(i) for i in re.findall(r"\d+\.?\d*", line)]
            C, M, Y, K = colors[0], colors[1], colors[2], colors[3]
            R = str(int(round(255 * (1-C) * (1-K))))
            G = str(int(round(255 * (1-M) * (1-K))))
            B = str(int(round(255 * (1-Y) * (1-K))))
        elif line[0:3] == "HSL":
            colors = [float(i) for i in re.findall(r"\d+", line)]
            H, S, L = colors[0], colors[1]/100, colors[2]/100
            C = (1-abs(2*L-1)) * S
            X = C*(1 - abs((H/60)%2 - 1))
            m = L-C/2
            R1, G1, B1 = 0, 0, 0
            if 0<= H < 60:
                R1, G1, B1 = C, X, 0
            elif 60<= H < 120:
                R1, G1, B1 = X, C, 0
            elif 120<= H < 180:
                R1, G1, B1 = 0, C, X
            elif 180<= H < 240:
                R1, G1, B1 = 0, X, C
            elif 240<= H < 300:
                R1, G1, B1 = X, 0, C
            elif 300<= H < 360:
                R1, G1, B1 = C, 0, X
            R, G, B = str(int(round((R1 + m)*255))), str(int(round((G1+m)*255))), str(int(round((B1+m)*255)))
        elif line[0:3] == "HSV":
            colors =  re.findall(r"\d+", line)
            H, S, V = float(colors[0]), (float(colors[1])/100), (float(colors[2])/100)
            C = V * S
            X = C * (1-(abs((H / 60 ) % 2 - 1)))
            m = V - C
            R1, G1, B1 = 0, 0, 0
            if 0<= H < 60:
                R1, G1, B1 = C, X, 0
            elif 60<= H < 120:
                R1, G1, B1 = X, C, 0
            elif 120<= H < 180:
                R1, G1, B1 = 0, C, X
            elif 180<= H < 240:
                R1, G1, B1 = 0, X, C
            elif 240<= H < 300:
                R1, G1, B1 = X, 0, C
            elif 300<= H < 360:
                R1, G1, B1 = C, 0, X
            R, G, B = str(int(round((R1 + m)*255))), str(int(round((G1+m)*255))), str(int(round((B1+m)*255)))
        elif line[0] == "#":
            color = line[1:]
            R, G, B = str(int(color[0:2],16)), str(int(color[2:4],16)), str(int(color[4:6],16))
        print ("RGB("+R+","+G+","+B+")")