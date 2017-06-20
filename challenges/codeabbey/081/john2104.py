import ctypes

nVal = raw_input()
values = raw_input().split()

response = ''
for i in values:
	value = ctypes.c_uint32(int(i)).value
	bits = '{:b}'.format(value)
	count = 0
	for b in bits:
		count = count + int(b)
	response = response +'%d '%count
print response
