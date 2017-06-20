#include<stdio.h>
#include<cmath>
int main(void){
    int scan,i=0,j=0;
    double a,b,c,s;
    scanf("%d",&scan);
    int vec[scan][6];
    for(i=0;i<scan;i++){
        for(j=0;j<6;j++){
            scanf("%d",&vec[i][j]);
        }
    }
    for(i=0;i<scan;i++){
        a=sqrt(pow(vec[i][0]-vec[i][2],2)+pow(vec[i][1]-vec[i][3],2)); //x1-x2, y1-y2
        b=sqrt(pow(vec[i][0]-vec[i][4],2)+pow(vec[i][1]-vec[i][5],2)); //x1-x3, y1-y3
        c=sqrt(pow(vec[i][2]-vec[i][4],2)+pow(vec[i][3]-vec[i][5],2)); //x2-x3, y2-y3
        s=(a+b+c)/2;
        printf("%f ",sqrt(s*(s-a)*(s-b)*(s-c)));
    }
    return 0;
}
