"""have a single letter (space separated) for each
phrase: Y if it is a palindrome and N if not."""
AMOUNT = int(input())
ANSWER = []
for x in range(AMOUNT):
    string = raw_input()
    new_str = ""
    for char in string:
        if char not in "/*-+@#$%&/(),. ":
            new_str += char.lower()
    if new_str == new_str[::-1]:
        ANSWER.append('Y')
    else:
        ANSWER.append('N')
print ' '.join(ANSWER)
