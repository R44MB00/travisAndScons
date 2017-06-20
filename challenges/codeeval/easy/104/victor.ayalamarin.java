
package codeeval;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.Stack;
/**
 *
 * @author Vicayala82
 */
public class WordToDigit {


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
                digPal.useDelimiter(";");
                String numeroPal;
                while(digPal.hasNext()){
                    numeroPal=(digPal.next()).trim();
                    switch (numeroPal){
                        case "zero":
                            resp=resp+"0";
                            break;
                        case "one":
                            resp=resp+"1";
                            break;
                        case "two":
                            resp=resp+"2";
                            break;
                        case "three":
                            resp=resp+"3";
                            break;
                        case "four":
                            resp=resp+"4";
                            break;
                        case "five":
                            resp=resp+"5";
                            break;
                        case "six":
                            resp=resp+"6";
                            break;
                        case "seven":
                            resp=resp+"7";
                            break;
                        case "eight":
                            resp=resp+"8";
                            break;
                        case "nine":
                            resp=resp+"9";
                            break;
                    }
                }
                System.out.println(resp);
            }
            leeArc.close();
        }
    }
    
}
