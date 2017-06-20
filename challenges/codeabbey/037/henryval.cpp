#include<stdio.h>
#include<math.h>
int main(void){
    float P,R,L,PP,r; //P=Préstamo, R=Tasa, L=Número_Meses, M=Pago_Mensual
    bool flag=true;
    scanf("%f %f %f",&P,&R,&L);
    int l,i,M=25000;
    l=(int)L;
    PP=P;
    float MC[l][4];
    while(flag){
        P=PP;
        for(i=0;i<l;i++){
            MC[i][0]=P;
            MC[i][1]=P*R/1200;
            MC[i][2]=M; //Ganancias
            MC[i][3]=MC[i][0]+MC[i][1]-MC[i][2];
            P=MC[i][3];
            if(MC[i][3]>MC[i][0]){
                i=l-1;
            }
            if(M<MC[i][1]){
                i=l-1;
            }
        }
        if(MC[l-1][3]<=0) flag=false;
        M++;
    }
    printf("\n Necesitas abonos mensuales de: %d",M-1);
}
