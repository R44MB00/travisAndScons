#include <iostream>
#include <string>
#include <set>
#include <vector>

using namespace std;

/*
 * Codeforces 071A
 */

vector<int> index;
set<int> all;

void fillSet(int n){
    for(int i = 1; i <= n; i++){
        all.insert(i);
    }
}

int main(){
    int n, x, y, t;
    set<int> levels;
    set<int>::iterator it;
    bool win = false;
    cin >> n;
    fillSet(n);
    cin >> x;
    while(x--){
        cin >> t;
        index.push_back(t);
    }
    cin >> y;
    while(y--){
        cin >> t;
        index.push_back(t);
    }
    for(int i = 0; i < index.size(); i++){
        levels.insert(index[i]);
    }
    if(levels == all) cout << "I become the guy." << endl;
    else cout << "Oh, my keyboard!" << endl;

    return 0;
}
