import sys

pivots = 0

def quickSort( array, left, right ):
	
	global pivots
	idx = 0
	piv = array[left]
	l = left
	r = right
	pivots = pivots + 1	

	while True:
		while (array[l] < piv): l += 1
		while (array[r] > piv): r += -1

		if (array[l]==array[r]): #equal numbers
			r+=-1
			
		if (l < r): #swap
			cpy = array[l]
			array[l] = array[r]
			array[r] = cpy

		else:
			idx = l
			break

	if (left < idx -1):
		quickSort(array,left,idx-1)

	if (right > idx +1):
		quickSort(array,idx + 1, right)
	
	return

class as_quick:
	with open(sys.argv[1], 'r') as test_cases:

		for line in test_cases:
			
			global pivots
			pivots = 0
			array = []

			for val in line.strip().split(' '):
				array.append(int(val))

			quickSort(array,0,len(array)-1)
			print pivots