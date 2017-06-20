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
 * 29 ‐ Sort with Indexes
 */

int main() {

    int i, len, a;
    vector<pair<int,int>> items;

    cin >> len;

    for(i = 0; i < len; i++) {
        cin >> a;
        items.push_back({i + 1, a});
    }

    sort(items.begin(), items.end(), [=](pair<int, int>& a, pair<int, int>& b) { return a.second < b.second; });

    for (auto &kv: items) {
        cout << kv.first << ' ';
    }
    
    return 0;
}
