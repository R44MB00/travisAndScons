#include<stdio.h>
int main(void){
	int n,i;
	scanf("%d",&n);
	int sum[n];
	long vec[2];
	for(i=0;i<n;i++){
		scanf("%ld %ld",&vec[0],&vec[1]);
		sum[i]=(vec[0]%6)+(vec[1]%6)+2;
	}
	for(i=0;i<n;i++) printf("%d ",sum[i]);
}