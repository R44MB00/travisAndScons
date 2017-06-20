# http://www.hacker.org/challenge/chal.php?id=159
# Didactic XOR Cipher 3

numbs = [0x31,0xcf,0x55,0xaa,0x0c,0x91,0xfb,0x6f,0xcb,0x33,0xf3,0x47,0x93,0xfe,0x00,0xc7,0x2e,0xbc,0x4c,0x88,0xfd,0x57,0xdc,0x6b,0xa7,0x1e,0x71,0xb7,0x59,0xd8,0x35,0x88]

val = ''
for b in range(0, 256):
    b2 = b
    for x in range(0, 256):
        for c in numbs:
            tmp = chr(b2^c)
            val += tmp
            b2 = (b2 + x) % 256
        if 'please' in val:
            print(val)
        if 'submit' in val:
            print(val)
        if 'for' in val:
            print(val)
        if 'this' in val:
            print(val)
        if 'challenge' in val:
            print(val)
        if 'the' in val:
            print(val)
        if 'hacker' in val:
            print(val)
        val = ''
