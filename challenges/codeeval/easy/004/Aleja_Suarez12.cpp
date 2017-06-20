#include <iostream>
#include <math.h>
bool IsPrime (int);

using namespace std;
int suma=0;
int num=2;
int primos=0;


int main()

{
   while(primos<1000){
       if(IsPrime(num))
       {
           suma+=num;
           primos++;
       }
       num++;
   }
   cout << suma << endl; 
}
bool IsPrime(int numero){
    int a= sqrt(numero);
    
    for(int i=2;i<=a;i++){
        if(numero%i == 0){
            return false;
        }
    }
    return true;
}
