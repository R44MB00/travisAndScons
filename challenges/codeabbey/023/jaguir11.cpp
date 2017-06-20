#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>

using namespace std;

/*
 * Codeabbey 023
 */

long checkSum(long a){
    a * = 113;
    a = a % 10000007;
    return a;
}

int main(){
    vector<int> arr;
    long x, sum = 0, tmp, swap = 0, count = 0;
    bool done = false;
    while(!done){
        cin >> x;
        if(x == -1) break;
        arr.push_back(x);
    }
    for(int i = 0; i < arr.size() - 1; i++){
        if(arr[i] > arr[i + 1]){
            tmp = arr[i];
            arr[i] = arr[i + 1];
            arr[i + 1] = tmp;
            swap++;
        }
    }
    for(int i = 0; i < arr.size(); i++){
        sum += arr[i];
        sum = checkSum(sum);
    }
    cout << swap << " " << sum << endl;
    return 0;
}
