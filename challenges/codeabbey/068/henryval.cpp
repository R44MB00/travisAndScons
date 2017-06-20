#include<stdio.h>
int main(void){
	int n,i;
	float res,a,b,s;
	scanf("%d",&n);
	float vec[n];
	for(i=0;i<n;i++){
		scanf("%f %f %f",&s,&a,&b);
		vec[i]=(s*a)/(a+b);
	}
	for(i=0;i<n;i++){
		if(vec[i]==(int)vec[i]){
			printf("%d ",(int)vec[i]);
		}else{
			printf("%f ",vec[i]);
		}
	}
}