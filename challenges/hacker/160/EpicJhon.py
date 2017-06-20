# http://www.hacker.org/challenge/chal.php?id=160

hexa = '8776459cf37d459fbb7b5ecfbb7f5fcfb23e478aaa3e4389f378439aa13e4e96a77b5fc1f358439df36a4486a03e4381b63e5580a66c0c8ebd6d5b8aa13e459cf34e4d9fa67f02cf90714288a17f589abf7f5886bc705fcfbc700c96bc6b5ecfb7775f8cbc68499daa3f'

val = ''
count = 0
for b1 in range(0, 256):
    for b2 in range(0, 256):
        for b3 in range(0, 256):
            for b4 in range(0, 256):
                for i in range(0, len(hexa), 2):
                    count = count + 1

                    if count == 1:
                        temp = b1
                    if count == 2:
                        temp = b2
                    if count == 3:
                        temp = b3
                    if count == 4:
                        temp = b4

                    c = int(hexa[i:i+2], 16)
                    ch = chr(c^temp)
                    val += ch

                    if count == 4:
                        count = 0

                count = 0
                original = val
                val = val.lower()

                if len(val) != len(hexa)/2:
                    val = ''
                    break

                if 'this' in val:
                    print(original)
                if 'challenge' in val:
                    print(original)

                val = ''
