/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.*;


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
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            processLine(line);
        }
    }
   
    public static void processLine(String line){
        boolean self=true;
        for(int i=0;i<line.length() && self;i++){
            int digit=Integer.parseInt(""+line.charAt(i));
            int count=0;
            for(int j=0;j<line.length();j++){
                int digit2=Integer.parseInt(""+line.charAt(j));
                if(i==digit2){
                    count++;
                }
            }
            if(count!=digit){
                self=false;
            }
        }
        System.out.println(self?1:0);
    }
        
}
