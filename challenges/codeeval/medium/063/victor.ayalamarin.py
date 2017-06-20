
package codeevalmedium;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ContarPrimos {
    
    public static void main(String[] args) throws FileNotFoundException {
        String linea;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                linea=leeArc.nextLine().trim();
                Scanner leeNum = new Scanner(linea);
                leeNum.useDelimiter(",");
                int contador=0;
                int num1 =Integer.parseInt(leeNum.next().trim());
                int num2 =Integer.parseInt(leeNum.next().trim());
                for(int i=num1;i<=num2;i++){
                    if(analizaNum(i)){
                        contador++;
                    }
                }
                System.out.println(contador);
           }
           leeArc.close();
        }
    }
    
    
    public static boolean analizaNum(int num){
            int numAux[];
            int numPriv[]=new int[2];
            numPriv[0]=2;
            numPriv[1]=3;
            int numeroAux=5;
            boolean esPrimo=false;
            if(num>3) {
                    do{
                        double raiz=Math.sqrt(numeroAux)+1;
                        boolean ban=true;
                        int i=1;
                        boolean pri=true;
                        do{
                            if(i<numPriv.length & (numeroAux%numPriv[i-1]==0)){
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
                            if (numeroAux==num){
                                    esPrimo=true;
                            }
                            numPriv[numPriv.length-1]=numeroAux;
                        }
                        numeroAux++;
                    }while(numeroAux-1<=num);
        }else if(num ==2){
                        esPrimo=true;
                    }else if(num ==3){
                        esPrimo=true;
                    }
        return esPrimo;
        }
}
