/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codeevalmedium;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author VICTOR
 */
public class TrailingString {
     public static void main(String[] args) throws FileNotFoundException {
        String linea, eleLin;
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                linea=leeArc.nextLine().trim();
                Scanner leeCad = new Scanner(linea);
                leeCad.useDelimiter(",");
                String cadena1=leeCad.next().trim();
                String cadena2=leeCad.next().trim();
                buscaCadenaF(cadena1, cadena2);
            }
           leeArc.close();
        }
    }
    static void buscaCadenaF(String cad1, String cad2){
            Pattern subCad =Pattern.compile(cad2+"$");
            Matcher matCad = subCad.matcher(cad1);
            if (matCad.find()){
                System.out.println("1");
            } else{
                System.out.println("0");
            }
            
    }
       
}
