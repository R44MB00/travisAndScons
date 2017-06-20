#include <iostream>

using namespace std;

/*
 * Codeforces 231A
 */

int main(){
    int n, n1, i1, i2, i3, t = 0;
    cin >> n;
    while(n--){
        cin >> i1 >> i2 >> i3;
        if( i1 + i2 + i3 >= 2) t++;
    }
    cout << t << endl;
    return 0;
}
