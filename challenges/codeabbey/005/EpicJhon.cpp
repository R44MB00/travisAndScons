#include <iostream>
#include <string>
#include <vector>
#include <limits.h>

using namespace std;

/*
 * 5 - Minimum of Three
 */

int main() {

    int i, len, a, b, c;

    cin >> len;

    for(i = 0; i < len; i++) {
        cin >> a >> b >> c;

        // a < b < c
        if (a < c) {
            if (a < b)
                cout << a;
            else
                cout << b;
        } else {
            if (c < b)
                cout << c;
            else
                cout << b;
        }

        cout << (((i + 1) == len) ? "" : " ");
    }
    
    return 0;
}
