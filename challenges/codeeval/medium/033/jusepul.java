/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.*;
import java.util.regex.*;


/**
 *
 * @author ju-sepul
 */
public class Hack {

    /**
     * @param args the command line arguments
     */
   public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line=buffer.readLine();
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            processLine(line);
        }
    }
   
    public static void processLine(String line){
        int num=Integer.parseInt(line);
        int count=0;
        for(int i=0;i<=Math.sqrt(num);i++){
            double res=Math.sqrt(num-Math.pow(i, 2));
            if(res-Math.floor(res)==0){
                count++;
            }
        }
        System.out.println(count/2);
    }
        
}
 
