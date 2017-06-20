#http://www.hacker.org/challenge/chal.php?id=34

n = str((17**39)**11)

ret = ''
for i in range(0, len(n), 33):
    ret += n[i]
print ret
