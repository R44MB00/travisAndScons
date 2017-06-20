""" Gives the one who will lose his head """
import sys
with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        line = test.strip()
        people = int(line.split(",")[0])
        die = int(line.split(",")[1])
        array_people = [i for i in range(0, people)]
        new_array = []
        remove = 0
        while len(array_people) > 0:
            remove = (remove + die -1) % len(array_people)
            new_array.append(array_people.pop(remove))
        print " ".join([str(i) for i in new_array])
