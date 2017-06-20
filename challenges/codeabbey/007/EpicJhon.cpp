#include <iostream>
#include <string>
#include <vector>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 7 - Fahrenheit to Celsius
 */

int main() {

    int i, len, f;

    cin >> len;


    for (i = 0; i < len; i++) {
        cin >> f;
        cout << (int)round((float)(f - 32)/1.8)  << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
