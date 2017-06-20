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
public class timeToEat {
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
                ArrayList tiempos =new ArrayList();
                do {
                    tiempos.add(leeLin.next());
                }while(leeLin.hasNext());
                    Collections.sort(tiempos);
                    int k=tiempos.size();
                    int i=k-1;
                    for(int j=0;j<k;j++){
                        resp=resp+tiempos.get(i)+" ";
                        i=i-1;
                }
                System.out.print(resp.trim()+"\n");
            }
            leeArc.close();
        }
    }
}
