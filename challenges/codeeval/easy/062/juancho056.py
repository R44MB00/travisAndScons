
import sys
test_cases = open(sys.argv[1], 'r')

for test in test_cases:
  n,m= (test.split(","))
  n=int(n)
  m=int(m)
  resultado= n-((n/m)*m)
   
  print (resultado)



