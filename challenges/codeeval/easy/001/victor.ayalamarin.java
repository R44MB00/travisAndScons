package codeeval;

import java.io.*;
import java.util.Scanner;
/**
 *
 * @author VICTOR
 */
public class FizzBuzz {
    public static void main(String[] args) throws IOException {
        int x,y,n;
        //String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        //File file = new File(ruta);
        File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNextInt()){
                x=(leeArc.nextInt());
                y=(leeArc.nextInt());
                n=(leeArc.nextInt());
                String resp="";
                for(int i=0;n>i;i++){
                    if (((i+1)%x) == 0 & ((i+1)%y)==0){
                        resp=resp+"FB"+" ";
                    }
                    else{
                        if(((i+1)%x) == 0){
                            resp=resp+="F"+" ";
                        }
                        else{
                            if (((i+1)%y)==0){
                               resp=resp+="B"+" ";
                            }
                            else resp=resp+String.valueOf(i+1)+" ";      
                        }
                    }
                }
                System.out.print(resp.trim()+"\n");
            }
            leeArc.close();
        }
    }
}
