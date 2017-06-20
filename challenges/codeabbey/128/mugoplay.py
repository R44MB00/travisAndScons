"""Combinations Counting"""

MTX = [[118, 6], [93, 7], [120, 7], [57, 49], [100, 93],
       [105, 7], [65, 8], [102, 95], [102, 7], [59, 50]]

for v in MTX:
    counter_n = 1
    counter_k = 1
    counter_nk = 1
    N = v[0]
    K = v[1]
    N_K = N-K
    N_Range = range(2, N+1)
    K_Range = range(2, K+1)
    NK_Range = range(2, N_K+1)

    if N != 0:
        for n in N_Range:
            counter_n *= n

        NF = counter_n
    else:
        NF = 1
    if K != 0:
        for k in K_Range:
            counter_k *= k
        KF = counter_k
    else:
        KF = 1
    if N_K != 0:
        for nk in NK_Range:

            counter_nk *= nk
        NKF = counter_nk
    else:
        NKF = 1

    C_NK = NF/(KF*NKF)
    print C_NK
