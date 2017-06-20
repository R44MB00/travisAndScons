#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * 20 - Vowel Count
 */

int main() {

    int i = 0, j, len, sum = 0;
    char vowels[] = {'a', 'o', 'u', 'i', 'e', 'y'};
    string phrase;

    cin >> len;

    while(getline(cin, phrase)) {
        if (phrase.empty())
            continue;

        for (j = 0; j < phrase.length(); j++)
            sum += std::find(std::begin(vowels), std::end(vowels), phrase[j]) != std::end(vowels) ? 1 : 0;

        cout << sum << (((i + 1) == len) ? "" : " ");
        sum = 0;
        i++;
    }

    return 0;

}
