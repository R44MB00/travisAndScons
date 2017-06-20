a = "PS SR PR SR RS PS"
b = "PP PP PS SP RP RR RP"
c = "PR RS RR RP RS SR PR SS SP RR SR RR RP PP SS RP RP"
d = "RS PS SR PR SS RP PP SS PS"
e = "SR PR PP RP SR RR PS PR SS SR PP PR SS SS PP SR"
f = "RR SS PP PP SS RS PR SR SS PP RP RR PR PS SP PR"
g = "RS RS PS PP RP SP RS PS PS RR RR PR SP"
h = "PS RP RS SR PP SS SR PR RP PR RR RP"
i = "PS PR PP SP PR PP SS SP"
j = "PR PR RP SP PR"
k = "SP RR PP PS SR RP RS SR PS PS"
l = "PR SS SP PP PR PR"
m = "PP SS RS RR PR RR RP RP RP RP"
n = "RP SP RP SP PR RS"
o = "RR SR RR RP PP SP RR RP SP PP RS PS PR RP PR PP RP"
p = "PP SS RR PS PS SS PP RR SR PP PS"
q = "RR SS PS RS RP SR SS PP RP PS"
r = "SR RP RP"
s = "SP SS PP PR PP RP RS"
t = "SS RP SS SS SS SS PR PP SS RP PS RS RP SP SP RP"
u = "PS RR SR SP RS SR RR SR"
v = "RP RR PR SR SP SS RR PR PP SP"
w = "RP RR PP PR PS PR SS PS SS SR PS"
x = "SR PR SR PP PS PP PR SP PS"
y = "SP SR PS RR RP"
z = "PP RS PS RS RP SS RR SR SP SR RP RP"
def ganador(entrada):
  entrada=entrada.replace(" ", "")
  j1 = ""
  j2 = ""
  for i in range(0, len(entrada), 2):
    j1 += entrada[i]
  for i in range(1, len(entrada), 2):
    j2 += entrada[i]
  jug1 = 0
  jug2 = 0
  for aa, bb in zip(j1, j2):
    if aa == "P" and bb == "R":
      jug1 += 1
    elif aa == "R" and bb == "P":
      jug2 += 1
    elif aa == "P" and bb == "S":
      jug2 += 1
    elif aa == "S" and bb == "P":
      jug1 += 1
    elif aa == "R" and bb == "S":
      jug1 += 1
    elif aa == "S" and bb == "R":
      jug2 += 1
    elif aa == "P" and bb =="P" or aa == "R" and bb =="R" or aa == "S" and bb == "S":
      continue    
  if jug1 > jug2:
    print(1)
  else:
    print(2)
ganador(a)
ganador(b)
ganador(c)
ganador(d)
ganador(e)
ganador(f)
ganador(g)
ganador(h)
ganador(i)
ganador(j)
ganador(k)
ganador(l)
ganador(m)
ganador(n)
ganador(o)
ganador(p)
ganador(q)
ganador(r)
ganador(s)
ganador(t)
ganador(u)
ganador(v)
ganador(w)
ganador(x)
ganador(y)
ganador(z)
