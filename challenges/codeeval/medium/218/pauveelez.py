import sys


def district_map(i, s, c):
    return all([
        all((t, t+5) in c or (t+5, t) in c for t in range(s, s + 5*i, 5)),
        all((t, t+5) in c or (t+5, t) in c for t in range(s+i, s+i + 5*i, 5)),
        all((t, t+1) in c or (t+1, t) in c for t in range(s, s+i)),
        all((t, t+1) in c or (t+1, t) in c for t in range(s+5*i, s+5*i + i)),
    ])


def pipes_district(c):
    return sum(
        district_map(i, 5*j+k, c)
        for i in range(1, 5)
        for j in range(0, 5-i)
        for k in range(0, 5-i)
    )


with open(sys.argv[1], "r") as fn:
    for f in fn:
        ls = set(
            tuple(map(lambda x: int(x)-1, e.split()))
            for e in f.split("|")
        )
        print(pipes_district(ls))
