/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ju-sepul
 */
public class Hack {

    public static List<String> data=new ArrayList<>();
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
        String info[]=line.split(" ");
        for (String data1 : info) {
            push(data1);
        }
        String poped="";
        for(int i=0;i<info.length;i++){
            String txt=pop();
            if(i%2==0){
                poped+=txt+" ";
            }
        }
        System.out.println(poped.substring(0, poped.length()-1)); 
    }

    public static void push(String num){
        data.add(num);
    }
    
    public static String pop(){
        return data.remove(data.size()-1);
    }
}
 
