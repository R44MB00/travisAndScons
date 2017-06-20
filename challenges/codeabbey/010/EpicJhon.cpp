#include <iostream>
#include <string>
#include <vector>
#include <limits.h>

using namespace std;

/*
 * 10 - Linear Function
 */

int main() {

    int i, len, m, b, x1, y1, x2, y2;

    cin >> len;

    for(i = 0; i < len; i++) {
        cin >> x1 >> y1 >> x2 >> y2;
        m = (y2-y1)/(x2-x1);
        b = y1 - m * x1;
        cout << '(' << m << ' ' << b << ')' << (((i + 1) == len) ? "" : " ");
    }
    
    return 0;
}
