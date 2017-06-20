#include <iostream>
#include <math.h>

using namespace std;

/*
 * wechall - PrimeFactory
 */

bool isPrime(long long x){
    if(x == 1)
        return false;
    else if(x <= 2)
        return true;
    else if(x % 2 == 0)
        return false;
    else{
        bool p = true;
        int div = 3;
        double num_x = static_cast<double>(x);
        long long upper = static_cast<long long>(sqrt(num_x) + 1);
        while(div <= upper){
            if(x % div == 0){
                p = false;
            }
            div += 2;
        }
        return p;
    }
}

long long sumDig(long long num){
    long long sum = 0;
    while (num != 0){
        sum = sum + num % 10;
        num = num / 10;
    }
    return sum;
}

int main(){
    long long p2, p1 = 0;
    for(int i = 1000000; i < 1100000; ++i){
        if(isPrime(i) && isPrime(sumDig(i))){
            if(p1 == 0){
                p1 = i;
            }else{
                p2 = i;
                break;
            }
        }
    }
    cout << p1 << p2 << endl;
    return 0;
}
