#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 43 - Dice Rolling
 */

int main() {

    int i, len, N = 6;
    float a;
    string ret;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> a;
        cout << ((int)(a * N) + 1) << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
