__author__ = 'cnoguera'
import sys
file = open(sys.argv[1],'r')
score={"Vampires":3,"Zombies":4,"Witches":5}
for line in file:
    lt=line.rstrip("\n").split(",")
    houses=int(lt[3].split(":")[1])
    resp=0
    child=0
    for i in range(0,3,1):
        tmp=lt[i].strip(" ").split(":")
        m=int(tmp[1])*int(score[tmp[0]])*houses
        child+=int(tmp[1])
        resp+=m
    print resp/child
file.close()
