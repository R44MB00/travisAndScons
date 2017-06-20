#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>
#include <ctime>
#include <time.h>

using namespace std;

/*
 * 26 - Greatest Common Divisor
 */

int gcd(int a, int b) {
    return b == 0 ? a : gcd(b, a % b);
}

int main() {

    int i, len, a, b, r_gcd, r_lcm;

    cin >> len;

    for(i = 0; i < len; i++) {
        cin >> a >> b;
        r_gcd = gcd(a, b);
        r_lcm = a * b / r_gcd;
        cout << '(' << r_gcd << ' ' << r_lcm << ')' << (((i + 1) == len) ? "" : " ");
    }
    
    return 0;
}
