def postponed_sieve():
    
    yield 2; yield 3; yield 5; yield 7;
    
    def add(D, x, s):
        while x in D:
            x += s
        D[x] = s
    
    D = {}
    ps = (p for p in postponed_sieve())
    p = next(ps) and next(ps)
    q = p * p
    c = 9
    
    while True:
        if c not in D:
            if c < q:
                yield c
            else:
                add(D, c + 2 * p, 2 * p)
                p = next(ps)
                q = p * p
        else:
            s = D.pop(c)
            add(D, c + s, s)
        c += 2


if __name__ == '__main__':
    p = postponed_sieve()
    print(sum(next(p) for _ in range(1000)))
