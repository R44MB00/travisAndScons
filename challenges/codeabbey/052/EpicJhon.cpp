#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>
#include <iomanip>

using namespace std;

/*
 * 52 - Pythagorean Theorem
 */

int main() {

    int i, len, a, b, c;
    double c2;
    vector<double> items;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> a >> b >> c;

        c2 = sqrt( pow(a, 2) + pow(b, 2) );

        if (c2 == c)
            cout << 'R';
        else if (c2 > c)
            cout << 'A';
        else
            cout << 'O';

        cout << (((i + 1) == len) ? "" : " ");
    }
    return 0;

}
