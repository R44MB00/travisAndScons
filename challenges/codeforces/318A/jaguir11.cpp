#include <iostream>
#include <cmath>

using namespace std;

/*
 * Codeforces 318A
 */

int getPos(long long n, long long last, long long ini){
    ini = abs(last - ini);
    while(ini--){
        n += 2;
    }
    return n;
}

int main(){
    long long n, k, c, p;
    cin >> n >> k;
    if(k == 1){
        cout << "1" << endl;
    }else if(k == n){
        if(k % 2 != 0) n -= 1;
        cout << n << endl;
    }else{
        c = n / 2;
        if(n % 2 != 0) c++;
        if(k > c) p = getPos(0, k, c);
        else p = 2 * (k - 1) + 1;
        cout << p << endl;
    }
    return 0;
}
