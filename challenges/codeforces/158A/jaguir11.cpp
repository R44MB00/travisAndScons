#include <iostream>

using namespace std;

/*
 * Codeforces 158A
 */

int main(){
    int n, k, num, prev, count = 0;
    cin >> n >> k;
    for(int i = 1; i <= n; i++){
        cin >> num;
        if(num > 0 && i < k) count++;
        if(i == k){
            prev = num;
            if(num > 0) count++;
        }else if(i > k){
            if(num == prev && num > 0) count++;
        }
    }
    cout << count << endl;
    return 0;
}
