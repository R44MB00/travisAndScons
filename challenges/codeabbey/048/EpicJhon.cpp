#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 48 - Collatz Sequence
 */

int main() {

    int i, len, X, steps;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> X;
        steps = 0;

        while(X != 1) {
            steps++;
            if (X % 2 == 0)
                X /= 2;
            else
                X = 3 * X + 1;
        }

        cout << steps << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
