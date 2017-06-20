#!/usr/bin/python
import sys
endianess=sys.byteorder
if endianess=='little':
	print "LittleEndian"
else :
	print "BigEndian"
