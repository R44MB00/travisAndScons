package codeeval;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.Stack;
/**
 *
 * @author VICTOR
 */
public class PenultWord {
    public static void main(String[] args) throws IOException {
        String linea;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                linea=(leeArc.nextLine());
                Scanner leeLin = new Scanner(linea);
                Stack palabras =new Stack();
                do {
                    palabras.push(leeLin.next());
                }while(leeLin.hasNext());
                int k=palabras.size();
                palabras.remove(k-1);
                System.out.println(palabras.pop());
                }
            leeArc.close();  
        } 
    }
