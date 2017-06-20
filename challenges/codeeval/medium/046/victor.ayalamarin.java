
package codeevalmedium;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
/**
 *
 * @author VICAYALA82
 */
public class PrimosLess {
    public static void main(String[] args) throws FileNotFoundException {
        int linea;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                int numero=5;
                int numPriv[];
                String resp="2,3";
                linea=Integer.parseInt(leeArc.nextLine().trim());
                
                if(linea==2){
                        resp="2";
                }else if(linea==3){
                        resp="2,3";
                }else{
                    numPriv=new int[2];
                    numPriv[0]=2;
                    numPriv[1]=3;
                    while (numero<linea){

                        if (linea>3){
                            
                            double raiz=Math.sqrt(numero)+1;
                            boolean ban=true;
                            int i=0;
                            boolean pri=true;
                            boolean zer=false;
                            do{
                                if(i<numPriv.length & (numero%numPriv[i]==0)){
                                    ban=false;
                                    pri=false;
                                }
                                else{
                                        i=i+1;
                                }
                            }while ((numPriv[i-1]<=raiz & ban==true)& i<numPriv.length);
                            if(pri){
                                int vecAux[]= new int[numPriv.length];
                                vecAux=numPriv.clone();
                                numPriv= new int[vecAux.length+1];
                                for(int k=0; k<vecAux.length;k++){
                                    numPriv[k]=vecAux[k];
                                }
                                numPriv[numPriv.length-1]=numero;
                                resp=resp+","+numero;
                            }
                        }
                        numero=numero+2;
                    }
                    //System.out.println(resp);
                }
                System.out.println(resp);
           }
           leeArc.close();
        }
    }
}
