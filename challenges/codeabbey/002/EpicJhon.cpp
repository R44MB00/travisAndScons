#include <iostream>
#include <string>
#include <vector>
#include <limits.h>

using namespace std;

/*
 * 2 - Sum in loop
 */

int main() {

    int i, len, temp, sum = 0;

    cin >> len;

    for(i = 0; i < len; i++) {
        cin >> temp;
        sum += temp;
    }

    cout << temp;

    return 0;

}
