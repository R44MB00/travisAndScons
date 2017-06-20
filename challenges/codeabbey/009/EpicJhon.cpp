#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 9 - Triangles
 */

int main() {

    int i, len;
    float a, b, c, s, r;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> a >> b >> c;
        s = (a + b + c) / 2.0;
        r = sqrt(s * (s - a) * (s -b) * (s -c));

        cout << ((r >= 0) ? '1' : '0') << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
