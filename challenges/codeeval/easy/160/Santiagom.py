import sys,string

def degrees_to_minutes_seconds(degrees):
    degree = int(degrees)
    minutes = int((degrees-degree) * 60)
    seconds = int((degrees-degree-(minutes/60.0)) * 3600)
    return degree, minutes, seconds

def format(m_s_d):
    return '%i.%02i\'%02i"' % m_s_d


test_cases = open('test.txt')
#test_cases = open(sys.argv[1], 'r')

for test in test_cases:
	test = test.strip()
	degrees = float(test)
	m_s_d = degrees_to_minutes_seconds(degrees)
	print (format(m_s_d))




test_cases.close()
