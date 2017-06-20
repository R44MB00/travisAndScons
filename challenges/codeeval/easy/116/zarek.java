/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg116;
import java.io.*;
public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while((line=buffer.readLine()) != null)
        {
            line = line.trim();
            //System.out.println(line);
            String[] palabras = line.split("  ");
            for(int j = 0;j<palabras.length;j++)
            {
                String[] cadenas = palabras[j].split(" ");
                for(int i = 0;i<cadenas.length;i++)
                {
                    System.out.print(morseToChar(cadenas[i]));
                }
                System.out.print(" ");
            }
            System.out.println();
        }
    }
    
    public static String morseToChar(String cadena) {
        cadena = cadena.replace(".----","1");
        cadena = cadena.replace("..---","2");
        cadena = cadena.replace("...--","3");
        cadena = cadena.replace("....-","4");
        cadena = cadena.replace(".....","5");
        cadena = cadena.replace("-....","6");
        cadena = cadena.replace("--...","7");
        cadena = cadena.replace("---..","8");
        cadena = cadena.replace("----.","9");
        cadena = cadena.replace("-----","0");
        cadena = cadena.replace("-.-.","C");
        cadena = cadena.replace("-...","B");
        cadena = cadena.replace("....","H");
        cadena = cadena.replace("..-.","F");
        cadena = cadena.replace(".---","J");
        cadena = cadena.replace(".-..","L");
        cadena = cadena.replace(".--.","P");
        cadena = cadena.replace("--.-","Q");
        cadena = cadena.replace("...-","V");
        cadena = cadena.replace("-..-","X");
        cadena = cadena.replace("-.--","Y");
        cadena = cadena.replace("--..","Z");
        cadena = cadena.replace("...","S");
        cadena = cadena.replace("--.","G");
        cadena = cadena.replace("..-","U");
        cadena = cadena.replace("-.-","K");
        cadena = cadena.replace(".--","W");
        cadena = cadena.replace("-..","D");
        cadena = cadena.replace("---","O");
        cadena = cadena.replace(".-.","R");
        cadena = cadena.replace("..","I");
        cadena = cadena.replace("--","M");
        cadena = cadena.replace("-.","N");
        cadena = cadena.replace(".-","A");
        cadena = cadena.replace(".","E");
        cadena = cadena.replace("-","T");
        cadena = cadena.replace(" "," ");
        return cadena;
    }
}
