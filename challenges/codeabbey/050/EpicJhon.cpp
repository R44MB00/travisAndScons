#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 50 - Palindromes
 */

int main() {

    int i, len;
    string pharse, reversed;

    cin >> len;
    cin.ignore();
    for (i = 0; i < len; i++) {
        getline(cin, pharse);

        transform(pharse.begin(), pharse.end(), pharse.begin(), ::tolower);

        // Removes others.
        pharse.erase(
            remove_if(
                pharse.begin(), pharse.end(), [](char const c) {
                    return c < 'a' || c > 'z';
                }
            ),
            pharse.end()
        );
        
        reversed = pharse;
        reverse(reversed.begin(), reversed.end());
    

        cout << (pharse.compare(reversed) == 0 ? 'Y' : 'N') << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
