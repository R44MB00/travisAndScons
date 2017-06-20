#include <iostream>

using namespace std;

/*
 * Codeforces 716A
 */

int main(){
    long long n, c, prev, nxt, words = 1;
    cin >> n >> c;
    cin >> prev;
    n--;
    while(n--){
        cin >> nxt;
        if(nxt - prev <= c) words++;
        else words = 1;
        prev = nxt;
    }
    cout << words << endl;
    return 0;
}
