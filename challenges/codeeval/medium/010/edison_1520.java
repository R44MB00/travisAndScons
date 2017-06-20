Reto: Mth to last element

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        try (BufferedReader buffer = new BufferedReader(new FileReader(file))) {
            String str;
            while ((str = buffer.readLine()) != null) {
                str = str.trim();
                String[] vector = str.split(" ");
                int index=Integer.parseInt(vector[vector.length-1]);
                String substr = str.substring(0,str.length()-2);
                String[] cadena  = substr.split(" ");
                if(index>cadena.length)
                {
                    continue;
                } else {System.out.println(cadena[cadena.length-index]);}
            }
        }
    }
}
