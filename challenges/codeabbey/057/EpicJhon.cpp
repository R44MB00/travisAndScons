#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>
#include <iomanip>

using namespace std;

/*
 * 57 - Smoothing the Weather
 */

int main() {

    int i, len;
    double d, tmp;
    vector<double> items;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> tmp;
        items.push_back(tmp);
    }

    for (i = 0; i < items.size(); i++) {
        if (i == 0 || i == (items.size() - 1))
            d = items[i];
        else
            d = (items[i - 1] + items[i] + items[i + 1]) / 3;
            
        cout << setprecision(12) << d;
        cout << (((i + 1) == len) ? "" : " ");        
    }
    return 0;

}
