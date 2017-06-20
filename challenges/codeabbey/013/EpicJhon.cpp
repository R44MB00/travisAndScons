#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 13 - Weighted sum of digits
 */

int main() {

    int i, j, len, num, sum;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> num;

        sum = num;
        j = 0;

        while(sum > 0) {
            sum /= 10;
            j++;
        }

        sum = 0;
        while(num > 0) {
            sum += j * (num % 10);
            num /= 10;
            j--;
        }

        cout << sum << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
