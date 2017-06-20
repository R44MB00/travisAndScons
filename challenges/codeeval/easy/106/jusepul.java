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
        int last=0,lastTerm=0;
        int sum=0;
        for(int i=0;i<line.length();i+=2){
            int arabig=Integer.parseInt(""+line.charAt(i));
            int roman=0;
            switch (line.charAt(i+1)){
                case 'M':
                    roman=M;
                    break;
                case 'D':
                    roman=D;
                    break;
                case 'C':
                    roman=C;
                    break;
                case 'L':
                    roman=L;
                    break;
                case 'X':
                    roman=X;
                    break;
                case 'V':
                    roman=V;
                    break; 
                case 'I':
                    roman=I;
                    break;
            }
            int mult=arabig*roman;
            if(roman>last){
                sum-=2*lastTerm;
            }
            sum+=mult;
            last=roman;
            lastTerm=mult;
        }
        System.out.println(sum);
    }
        
    public final static int M=1000;
    public final static int D=500;
    public final static int C=100;
    public final static int L=50;
    public final static int X=10;
    public final static int V=5;
    public final static int I=1;
}
 
