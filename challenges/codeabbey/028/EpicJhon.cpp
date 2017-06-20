#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 28 - Body Mass Index
 */

int main() {

    int i, len;
    float BMI, a, b;
    string ret;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> a >> b;

        BMI = a / pow(b, 2.0);

        if (BMI < 18.5)
            ret = "under";
        else if (BMI >= 18.5 && BMI < 25.0)
            ret = "normal";
        else if (BMI >= 25.0 && BMI < 30.0)
            ret = "over";
        else
            ret = "obese";

        cout << ret << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
