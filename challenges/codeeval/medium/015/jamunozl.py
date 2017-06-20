import sys
from struct import *

result=sys.byteorder
if(result=='little'):
	print('LittleEndian')
else:
	print('BigEndian')
