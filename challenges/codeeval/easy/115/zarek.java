/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg115;

import java.io.*;
public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while((line=buffer.readLine()) != null)
        {
            line = line.trim();
            String[] datos = line.split(",");
            String[] cadenas = new String[datos.length];
            String[] numeros = new String[datos.length];
            int num = 0;
            int str = 0;
            for(int i=0;i<datos.length;i++)
            {
                if(isNumeric(datos[i]))
                {
                    numeros[num++] = datos[i];
                }else{
                    cadenas[str++] = datos[i];
                }
            }
            for(int i=0;i<cadenas.length;i++)
            {
                if(cadenas[i]!=null)
                {
                    System.out.print(cadenas[i]);
                    if(i+1<cadenas.length && cadenas[i+1]!=null)
                    {
                        System.out.print(",");
                    }
                }
            }
            if(cadenas[0]!=null && numeros[0]!=null){
                System.out.print("|");
            }
            for(int i=0;i<numeros.length;i++)
            {
                if(numeros[i]!=null)
                {
                    System.out.print(numeros[i]);
                    if(i+1<numeros.length && numeros[i+1]!=null)
                    {
                        System.out.print(",");
                    }
                }
            }
            System.out.println();
        }
    }
    public static boolean isNumeric(String str)
    {
        try
        {
            int d = Integer.parseInt(str);
        }
        catch(NumberFormatException nfe)
        {
            return false;
        }
        return true;
    }
}
