#include <iostream>
#include <string>
#include <vector>
#include <limits.h>

using namespace std;

/*
 * 3 - Sums in loop
 */

int main() {

    int i, len, a, b;

    cin >> len;

    for(i = 0; i < len; i++) {
        cin >> a >> b;
        cout << (a + b) << (((i + 1) == len) ? "" : " ");
    }
    
    return 0;
}
