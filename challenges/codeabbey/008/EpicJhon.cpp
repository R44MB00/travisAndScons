#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 8 - Arithmetic Progression
 */

int main() {

    int i, len, a, b, N, sum;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> a >> b >> N;

        sum = 0;
        N--;

        while(N >= 0) {
            sum += a + N * b;
            N--;
        }

        cout << sum << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
