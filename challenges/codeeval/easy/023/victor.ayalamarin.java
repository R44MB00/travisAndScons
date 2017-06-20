
package codeeval;

/**
 *
 * @author VICTOR
 */
public class tablaMultiplicar {
   
    public static void main(String[] args){
         int tabla [][]= new int [12][12];
         for (int i=0; i<12;i++){
             for (int j=0;j<12;j++){
                tabla[i][j]=(j+1)*(i+1);
             }
         }
         String temp;
         for (int i=0; i<11;i++){
             temp="";
             for (int j=0;j<12;j++){
                if(tabla[i][j]<10){
                 temp=temp+"   "+tabla[i][j];
                }else{
                    if(tabla[i][j]<100){
                        temp=temp+"  "+tabla[i][j];
                    }
                    else{
                        temp=temp+" "+tabla[i][j];
                    }
                }
             }
             System.out.print(temp+"\n");
         }

             temp="";
             for (int j=0;j<12;j++){
                if(tabla[11][j]<100){
                        temp=temp+"  "+tabla[11][j];
                    }
                    else{
                        temp=temp+" "+tabla[11][j];
                    }
              }
             System.out.print(temp);
    }
}
