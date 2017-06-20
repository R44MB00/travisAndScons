#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 30 - Reverse String
 */

int main() {

    string phrase;

    getline(cin, phrase);
    reverse(phrase.begin(), phrase.end());
    cout << phrase;

    return 0;

}
