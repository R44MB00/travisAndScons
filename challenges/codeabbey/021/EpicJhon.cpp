#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 21 - Array Counters
 */

int main() {

    int i, M, N, index;

    cin >> M >> N;

    int *sums = new int[N];

    for (i = 0; i < M; i++) {
        cin >> index;
        sums[--index]++;
    }

    for (i = 0; i < N; i++)
        cout << sums[i] << (((i + 1) == N) ? "" : " ");

    return 0;

}
