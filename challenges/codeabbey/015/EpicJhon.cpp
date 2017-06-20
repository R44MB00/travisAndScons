#include <iostream>
#include <string>
#include <vector>
#include <limits.h>

using namespace std;

/*
 * 15 - Maximum of array
 */

int main() {

    int min = 2147483647, max = -2147483648, temp;

    while (cin >> temp) {
        min = (temp < min) ? temp : min;
        max = (temp > max) ? temp : max;
    }
    
    cout << max << " " << min;
    
    return 0;
}
