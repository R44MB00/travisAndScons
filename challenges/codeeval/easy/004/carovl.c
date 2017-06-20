#include <stdio.h>
//este programa suma los primeros 1000 primos
int main(void)
{
 int cont =0;
 int n=2;
 int suma=0;
 int div;
 int num=2;
 while (cont<1000){ 
  for (num;num<=n; num++){ 
   div=0;
   for (int j=1;j<=num;j++){  
    if(num%j==0){
     div++;
    }
   }
   if(div==2){
    cont++;
    suma=suma+num;
   }		
  }
  n++;	
 }
 printf("%i\n", suma);
}
