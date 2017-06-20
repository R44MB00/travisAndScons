
import sys

with open(sys.argv[1], 'r') as test_cases:
    for test in test_cases:
        lista = test.strip().split("| ")
        writer_encoded = "-" + lista[0]
        datanum = lista[1].split(" ")
        indices = []
        writer_decoded = ""
        for item in datanum:
            indices.append(int(item))
        for i in range(0,len(indices)):
            writer_decoded += writer_encoded[indices[i]]
        print (writer_decoded)
