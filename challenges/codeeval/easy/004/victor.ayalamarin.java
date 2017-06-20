
package codeeval;

/**
 *
 * @author VICTOR
 */
public class PrimosMil {
    public static void main(String[] args){
        int sumPri=5;
        int cont=2;
        int numero=3;
        int [] numPri=new int [1000];
        numPri[0]=2;
        numPri[1]=3;
        while(cont<1000){
            numero=numero+2;
            double raiz=Math.sqrt(numero)+2;
            boolean ban=true;
            int i=1;
            boolean pri=true;
            boolean zer=false;
            do{
                
                if(numero % numPri[i] == 0){
                    ban=false;
                    pri=false;
                    zer=true;
                }
                else{
                    if(numPri[i+1]==0){
                        zer=true;
                    }
                    else{
                        i=i+1;
                    }
                }
            }while (zer==false & (numPri[i]<=raiz & ban==true));
            if(pri){
                numPri[cont]=numero;
                sumPri=sumPri+numero;
                cont=cont+1;
            }

        }
        System.out.print("suma ="+sumPri+"   ");
        //for (int k=0;k<numPri.length;k++){
          //System.out.print(Integer.toString(numPri[k])+" ");  
        //}
        
    }
    
}
