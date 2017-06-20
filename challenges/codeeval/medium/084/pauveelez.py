import sys

def smile(s, cnt):
  l = len(s)
  for i in xrange(l):
    if s[i] in "()":
      return (s[i] == '(' and smile(s[i+1:], cnt+1)) or \
             (s[i] == ')' and cnt > 0 and smile(s[i+1:], cnt-1)) or \
             (i > 0 and s[i-1] == ':' and smile(s[i+1:], cnt))
  return cnt == 0

def is_smile(s):
  return "YES" if smile(s, 0) else "NO"
    
with open(sys.argv[1], "r") as fn:
    for f in fn:
        print is_smile(f.strip())
