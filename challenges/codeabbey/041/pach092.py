"""This script contains selected medians of triplets, separated by spaces."""
DATA = int(raw_input())
for minimo in range(DATA):
    value = raw_input().split()
    data = int(value[0]), int(value[1]), int(value[2])
    sort = sorted(data)
    print sort[1], ''
