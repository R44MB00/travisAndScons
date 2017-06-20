#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 16 - Average of an array
 */

int main() {

    int i, len, a, sum, N;

    cin >> len;

    for (i = 0; i < len; i++) {

        sum = 0;
        N = 0;

        do {
            cin >> a;
            sum += a;
            N++;
        } while(a != 0);

        cout << round((float)sum / (float)--N) << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
