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
        int age=Integer.parseInt(line);
        if(age>=0 && age<=100){
            if(age<=2){
                System.out.println("Still in Mama's arms'");
            }else if(age<=4){
                System.out.println("Preschool Maniac");
            }else if(age<=11){
                System.out.println("Elementary school");
            }else if(age<=14){
                System.out.println("Middle school");
            }else if(age<=18){
                System.out.println("High school");
            }else if(age<=22){
                System.out.println("College");
            }else if(age<=65){
                System.out.println("Working for the man");
            }else{
              System.out.println("The Golden Years"); 
            }
        }else{
            System.out.println("This program is for humans");
        }
    }
        
}
