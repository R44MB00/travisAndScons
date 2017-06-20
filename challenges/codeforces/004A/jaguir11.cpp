#include <iostream>
#include <math.h>

using namespace std;

/*
 * codeforces 004A
 */

bool isPrime(int x){
    if(x <= 3)
        return true;
    else if(x % 2 == 0)
        return false;
    else{
        bool p = true;
        int div = 4;
        double num_x = static_cast<double>(x);
        int upper = static_cast<int>(sqrt(num_x) + 1);
        while(div <= upper){
            if(x % div == 0){
                p = false;
            }
            div += 2;
        }
        return p;
    }
}

int main(){
    int n;
    cin >> n;
    if(isPrime(n) == true){
        cout << "NO" << endl;
    }else{
        cout << "YES" << endl;
    }
    return 0;
}
