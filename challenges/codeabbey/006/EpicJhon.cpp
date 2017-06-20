#include <iostream>
#include <string>
#include <vector>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 6 - Rounding
 */

int main() {

    int i, len, a, b;

    cin >> len;


    for (i = 0; i < len; i++) {
        cin >> a >> b;
        cout << (int)round((float)a / (float)b)  << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
