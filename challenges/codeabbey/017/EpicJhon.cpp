#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 17 - Array Checksum
 */

int main() {

    uint i, len, ret = 0, item;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> item;
        ret += item;
        ret *= 113;
        ret %= 10000007;
    }

    cout << ret << (((i + 1) == len) ? "" : " ");

    return 0;

}
