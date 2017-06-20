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
        String data=line.replace(" ", "");
        int sum=0;
        for(int i=data.length()-1;i>0;i-=2){
            int num=Integer.parseInt(""+data.charAt(i-1))*2;
            if(num>9){
                int digit1=Integer.parseInt(""+(""+num).charAt(0));
                int digit2=Integer.parseInt(""+(""+num).charAt(1));
                num=digit1+digit2;
                sum+=num;
            }else{
                sum+=num;
            }
            sum+=Integer.parseInt(""+data.charAt(i));
        }
        if(data.length()%2!=0){
            sum+=Integer.parseInt(""+data.charAt(0));
        }
        System.out.println(sum%10==0?1:0);
    }

}
 
