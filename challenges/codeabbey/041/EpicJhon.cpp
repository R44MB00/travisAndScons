#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 41 - Median of Three
 */

int main() {

    vector<int> n;
    int i, len, a, b, c;

    cin >> len;


    for (i = 0; i < len; i++) {
        cin >> a >> b >> c;
        n.insert(n.begin(), {a, b ,c});

        sort(n.begin(), n.end());

        cout << n[1] << (((i + 1) == len) ? "" : " ");
        n.clear();
    }

    return 0;

}
