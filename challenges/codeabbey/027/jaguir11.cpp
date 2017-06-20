#include <iostream>
#include <math.h>

using namespace std;

/*
 * Codeabbey 027
 */

int main(){
    int n, swapr, swap, pass = 0,swapc = 0;
    cin >> n;
    int arr[n];
    for(int k = 0; k < n; k++){
        cin >> arr[k];
    }
    for (int i = 0; i < (n - 1); i++){
        pass++;
        swapr = 0;
        for (int j = 0; j < n - 1; j++){
            if (arr[j] > arr[j + 1]){
                swap = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = swap;
                swapc++;
                swapr++;
            }
        }
        if(swapr == 0) break;
    }
    cout << pass << " " << swapc << endl;
    return 0;
}
