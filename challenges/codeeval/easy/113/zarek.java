/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg113;

import java.io.*;
public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while((line=buffer.readLine()) != null)
        {
            line = line.trim();
            String[] datos = line.split(" ");
            for(int i=0; i< datos.length/2;i++)
            {
                System.out.print(Integer.parseInt(datos[i]) * Integer.parseInt(datos[i+(datos.length/2)+1]));
                if(i<datos.length/2-1)
                {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
    }
    
}
