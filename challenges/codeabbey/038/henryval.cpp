#include<stdio.h>
#include<complex>
#include<cmath>
int main(void){
    int scan,i=0,j=0,a,b,c,d;
    scanf("%d",&scan);
    int vec[scan][3];
    for(i=0;i<scan;i++){
        for(j=0;j<3;j++){
            scanf("%d",&vec[i][j]);
        }
    }
    for(i=0;i<scan;i++){
        a=vec[i][0];
        b=vec[i][1];
        c=vec[i][2];
        if(((b*b)-4*a*c)<0){
            d=sqrt(abs((b*b)-4*a*c))/(2*a);
            if(d>=0){
                printf("%d+%di %d%di; ",-(b/(2*a)),d,-(b/(2*a)),-d);
            }else{
                printf("%d%di %d%+di; ",-(b/(2*a)),d,-(b/(2*a)),-d);
            }
        }else{
            d=(-b+sqrt(((b*b)-4*a*c)))/(2*a);
            printf("%d ",d);
            d=(-b-sqrt(((b*b)-4*a*c)))/(2*a);
            printf("%d; ",d);
        }
    }
    return 0;
}
