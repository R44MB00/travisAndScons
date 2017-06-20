
package codeeval;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.Stack;
/**
 *
 * @author VICTOR
 */
public class ReverseWords {
     public static void main(String[] args) throws IOException {
        String palLin, resp;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                resp="";
                palLin=(leeArc.nextLine());
                Scanner leeLin = new Scanner(palLin);
                Stack palabras =new Stack();
                do {
                    palabras.push(leeLin.next());
                }while(leeLin.hasNext());
                int k=palabras.size();
                for(int j=0;j<k;j++){
                    resp=resp+palabras.pop().toString()+" ";
                }
                System.out.print(resp.trim()+"\n");
            }
            leeArc.close();
        }
    }

}
