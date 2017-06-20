# 14 - Modular Calculator

ret = int(input())

s = ''
while s[:1] != '%':
    s = input()
    if s[:1] == '+':
        ret += int(s[2:].strip())
    elif s[:1] == '*':
        ret *= int(s[2:].strip())

print(ret%int(s[2:].strip()))
