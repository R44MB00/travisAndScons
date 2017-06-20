
package codeeval;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Scanner;
import java.util.Stack;

/**
 *
 * @author VICTOR
 */
public class SimpleSorting {
    public static void main(String[] args) throws IOException {
        String linea;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                linea=(leeArc.nextLine());
                Scanner leeLin = new Scanner(linea);
                Stack numeros =new Stack();
                do {
                    numeros.push(Double.parseDouble(leeLin.next()));
                }while(leeLin.hasNext());
                int tam=numeros.size();
                double num[]= new double[tam];
                for (int i=0;i<tam;i++){
                    num[i]=(double) numeros.pop();
                }
                Arrays.sort(num);
                String respu="";
                DecimalFormat df = new DecimalFormat("0.000");
                for (int j=0;j<tam;j++){
                    double aux;
                    respu=respu+" "+df.format(num[j]);
                 }
                System.out.println(respu.trim());
            }
            leeArc.close();  
        } 
    }
}
