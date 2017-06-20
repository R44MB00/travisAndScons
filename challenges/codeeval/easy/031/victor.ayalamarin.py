#! /usr/bin/python

# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

__author__ = "VICAYALA82"
__date__ = "$Dec 5, 2015 8:57:25 AM$"

#file = open(sys.argv[1], 'r')
file = open('C:\\Users\\VICTOR\\Documents\\Aprueba.txt','r')
for line in file:
    linea=line.strip(' \n')
    if linea:
        n=linea.find(',')
        part1 = linea[:n].strip(' ')
        part2 =linea[n+1:].strip(' ')
        try:
            print(part1.index(part2))
        except ValueError:
            print ('-1')
file.close()
