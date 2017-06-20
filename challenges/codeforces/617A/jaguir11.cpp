#include <iostream>

using namespace std;

/*
 * Codeforces 617A
 */

int main(){
    long long n;
    cin >> n;
    if(n % 5 == 0) cout << n / 5 << endl;
    else cout << (n / 5) + 1 << endl;
    return 0;
}
