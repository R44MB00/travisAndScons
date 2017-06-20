
package codeeval;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
/**
 *
 * @author VICTOR
 */
public class SumaNumero {
     public static void main(String[] args) throws IOException {
        String numStr;
        int num, sum;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                numStr=(leeArc.nextLine());
                sum=0;
                char ch;
                for(int i=0;i<numStr.length();i++){
                   ch=numStr.charAt(i);
                   String numCha=""+ch;
                   sum=sum+(Integer.parseInt(numCha.trim()));
                }
                System.out.print(sum+"\n");
            }
            leeArc.close();
        }
    }
}
