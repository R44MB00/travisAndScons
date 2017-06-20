#include<stdio.h>
int main(void){
    int a,i=0;
    scanf("%d",&a);
    int vec[a*3],res[a],sum=0;
    for(i=0;i<a*3;i++){
        scanf("%d",&vec[i]);
    }
    for(i=0;i<a*3;i=i+3){
        printf("%d ",((((vec[i]*vec[i+1])+vec[i+2])/100000000)%10)+((((vec[i]*vec[i+1])+vec[i+2])/10000000)%10)+((((vec[i]*vec[i+1])+vec[i+2])/1000000)%10)+((((vec[i]*vec[i+1])+vec[i+2])/100000)%10)+((((vec[i]*vec[i+1])+vec[i+2])/10000)%10)+((((vec[i]*vec[i+1])+vec[i+2])/1000)%10)+((((vec[i]*vec[i+1])+vec[i+2])/100)%10)+((((vec[i]*vec[i+1])+vec[i+2])/10)%10)+((((vec[i]*vec[i+1])+vec[i+2])/1)%10));
    }
}
