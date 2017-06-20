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
        String data[]=line.split(" ");
        int doors=Integer.parseInt(data[0]);
        int iterations=Integer.parseInt(data[1]);
        boolean[] locks=new boolean[doors];
        for(int i=0;i<iterations-1;i++){
            for(int j=0;j<locks.length;j++){
                if((j+1)%2==0){
                    locks[j]=true;
                }
            }
            for(int l=0;l<locks.length;l++){
                if((l+1)%3==0){
                    locks[l]=!locks[l];
                }
            }
        }
        locks[locks.length-1]=!locks[locks.length-1];
        int unlocked=doors;
        for(int k=0;k<locks.length;k++){
            unlocked-=locks[k]?1:0;
        }
        System.out.println(unlocked);
    }

}
 
