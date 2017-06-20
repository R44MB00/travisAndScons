/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codeeval;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author VICTOR
 */
public class MixedContent {
    public static void main(String[] args) throws IOException {
         String linea, respNum, respPal, resp;
            String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
            File file = new File(ruta);
            //File file = new File(args[0]);
            try (Scanner leeArc = new Scanner(file)) {
               while (leeArc.hasNext()){
                    resp="";
                    respNum="";
                    respPal="";
                    linea=(leeArc.nextLine()).trim();
                    Scanner leeEle=new Scanner(linea);
                    leeEle.useDelimiter(",");
                    while (leeEle.hasNext()){
                        Pattern palabra =Pattern.compile("[\\w+]+[a-zA-Z]");
                        String auxele= leeEle.next().trim();
                        Matcher busPal = palabra.matcher(auxele);
                        if (busPal.matches()){
                            respPal=respPal+","+auxele;
                        }else{
                            respNum=respNum+","+auxele;
                        }
                        
                    }
                    if (respPal==null || respPal.equals("")){
                        String resNum1=respNum.substring(1);
                        System.out.println(resNum1);
                    }else if (respNum==null || respNum.equals("")){
                        String resPal1=respPal.substring(1);
                        System.out.println(resPal1);
                    }else{
                        String resPal1=respPal.substring(1);
                        String resNum1=respNum.substring(1);
                        System.out.println(resPal1+"|"+resNum1);
                    }
                }
                leeArc.close();
            }
        }
    
}
