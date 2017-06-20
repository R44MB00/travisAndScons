#include <iostream>
#include <string>
#include <vector>
#include <limits.h>

using namespace std;

/*
 * 4 - Minimum of Two
 */

int main() {

    int i, len, a, b;

    cin >> len;

    for(i = 0; i < len; i++) {
        cin >> a >> b;
        cout << ((a < b) ? a : b) << (((i + 1) == len) ? "" : " ");
    }
    
    return 0;
}
