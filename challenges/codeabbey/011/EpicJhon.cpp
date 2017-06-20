#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 11 - Sum of digits
 */

int main() {

    int i, len, a ,b ,c, tmp, sum;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> a >> b >> c;

        tmp = a * b + c;
        sum = 0;

        while(tmp > 0) {
            sum += tmp % 10;
            tmp /= 10;
        }

        cout << sum << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
