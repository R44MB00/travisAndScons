package codeeval;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

/**
 *
 * @author VICTOR
 */
public class CleanWords {
    public static void main(String[] args) throws IOException {
        String palLin, palMin, palCon, resp;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                resp="";
                palLin=(leeArc.nextLine());
                palMin=palLin.toLowerCase();
                int i=palMin.length();
                palCon=palMin;
                for(int j=0;j<i;j++){
                    if (palMin.codePointAt(j)<97| palMin.codePointAt(j)>122){
                        palMin=palMin.replace(palMin.charAt(j),' ');
                    }               
                }
                Scanner palEsp= new Scanner(palMin);
                do{
                    resp=resp+palEsp.next()+" ";
                }while(palEsp.hasNext());
                
               System.out.print(resp.trim()+"\n"); 
            }
            
            leeArc.close();
        }
    }
}
