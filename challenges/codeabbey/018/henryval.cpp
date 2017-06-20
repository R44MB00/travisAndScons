#include<stdio.h>
#include<cmath>
int main(void){
    int scan,i=0,j=0;
    double x0;
    scanf("%d",&scan);
    int vec[scan][2];
    for(i=0;i<scan;i++){
        for(j=0;j<2;j++){
            scanf("%d",&vec[i][j]);
        }
    }
    for(i=0;i<scan;i++){
        x0=1;
        for(j=0;j<vec[i][1];j++){
            x0=(x0+((vec[i][0])/x0))/2;
        }
        printf("%f ",x0);
    }
    return 0;
}
