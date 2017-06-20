package pkg99;

import java.io.*;
public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while((line=buffer.readLine()) != null)
        {
            line = line.trim();
            String separador1 = " ";
            String[] parte1 = line.split(separador1);
            int num1 = Integer.parseInt(limpiar(parte1[0]));
            int num2 = Integer.parseInt(limpiar(parte1[1]));
            int num3 = Integer.parseInt(limpiar(parte1[2]));
            int num4 = Integer.parseInt(limpiar(parte1[3]));
            double distancia = Math.sqrt(Math.pow(num1 - num3, 2) + Math.pow(num2 - num4, 2));
            System.out.println((int)distancia);
        }
    }
    
    public static String limpiar(String cadena) {        
        cadena = cadena.replace("(", "");
        cadena = cadena.replace(")", "");
        cadena = cadena.replace(",", "");
        return cadena;

    }  
}
