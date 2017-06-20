#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 31 - Rotate String
 */

int main() {

    int i, len, rot;
    string s;

    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> rot >> s;
        if (rot > 0)
            rotate(s.begin(), s.begin() + rot, s.end());
        else
            rotate(s.begin(), s.end() + rot, s.end());
        cout << s << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
