import sys
import itertools


def get_file():
    filename = sys.argv[1]
    with open(filename) as f:
        lines = f.readlines()
        lines = [i.strip('\n') for i in lines]
        return lines

def check_package(id_list):
    global solution
    for id_group in id_list:
        weigth = 0
        cost = 0
        for ID in id_group:
            weigth += items[ID][1]
            cost += items[ID][2]
        if weigth > package_weight:
            continue
        if cost > solution[2]:
            solution = (id_group, weigth, cost)
        elif cost == solution[2]:
            if weigth < solution[1]:
                solution = (id_group, weigth, cost)
    return None
    
# Package problem
lines = get_file()
for line in lines:
    solution = ( "-", 0, 0)    
    [package_weight, items]= line.replace('$', '').split(":")
    items = [eval(i) for i in items.strip().split(' ')]
    package_weight = eval(package_weight.strip())
    combs = []
    for i in range(1, len(items)):
        check_package(list(itertools.combinations(range(len(items)), i)))    
       
    if solution[0] == '-':
        print "-"
    else:
        print ','.join([str(i+1) for i in solution[0]])

