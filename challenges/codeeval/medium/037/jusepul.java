/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.*;
import java.nio.ByteOrder;

/**
 *
 * @author ju-sepul
 */
public class Hack {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            processLine(line);
        }
    }

    public static void processLine(String line) {
        line=line.toLowerCase();
        String letters="abcdefghijklmnopqrstuvwxyz";
        String rest="";
        for(int i=0;i<letters.length();i++){
            boolean found=false;
            for(int j=0;j<line.length()&&!found;j++){
                if(line.charAt(j)==letters.charAt(i)){
                    found=true;
                }
            }
            if(!found){
                rest+=""+letters.charAt(i);
            }
        }
        System.out.println(rest.equals("")?"NULL":rest);
    }

}
 
