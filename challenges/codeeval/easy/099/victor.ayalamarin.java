/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codeeval;

import java.io.File;
import java.io.IOException;
import static java.lang.Math.pow;
import static java.lang.Math.sqrt;
import java.util.Scanner;

/**
 *
 * @author Vicayala82
 */

public class CalculateDistance {

    public static void main(String[] args) throws IOException {
         String linea, resp;
            String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
            File file = new File(ruta);
            //File file = new File(args[0]);
            try (Scanner leeArc = new Scanner(file)) {
               while (leeArc.hasNext()){
                    resp="";
                    linea=(leeArc.nextLine()).trim();
                    Scanner digPal = new Scanner(linea);
                    int pos=linea.indexOf("(");
                    int fin=linea.indexOf(")");
                    String auxStr=linea.substring(pos+1,fin).trim();
                    Scanner numer= new Scanner(auxStr);
                    numer.useDelimiter(", ");
                    int x1=Integer.parseInt(numer.next());
                    int y1=Integer.parseInt(numer.next());
                    pos =linea.indexOf(")",fin+1);
                    auxStr=linea.substring(fin+3,pos);
                    numer= new Scanner(auxStr);
                    numer.useDelimiter(", ");
                    int x2=numer.nextInt();
                    int y2=numer.nextInt();
                    int distan;
                    distan=(int)sqrt((pow((x2-x1),2))+(pow((y2-y1),2)));
                    System.out.println(distan);
                }
                leeArc.close();
            }
        }
}
