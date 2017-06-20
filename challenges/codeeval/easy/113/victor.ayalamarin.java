/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codeeval;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.LinkedList;

/**
 *
 * @author VICTOR
 */
public class MultiplyLists {
    public static void main(String[] args) throws IOException {
         String linea, resp;
            String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
            File file = new File(ruta);
            //File file = new File(args[0]);
            try (Scanner leeArc = new Scanner(file)) {
               while (leeArc.hasNext()){
                    resp="";
                    linea=(leeArc.nextLine()).trim();
                    int posi=linea.indexOf("|");
                    String sub1=linea.substring(0, posi);
                    String sub2=linea.substring(posi+1);
                    Scanner num1=new Scanner(sub1);
                    Scanner num2=new Scanner(sub2.trim());
                    LinkedList<Integer> col1 =new LinkedList();
                    LinkedList<Integer> col2 =new LinkedList();
                    while (num1.hasNext()){
                      col1.offer(Integer.parseInt(num1.next().trim()));
                    }
                    while (num2.hasNext()){
                      col2.offer(Integer.parseInt(num2.next().trim()));
                    }
                    while(col1.peek()!=null){
                        int aux1=col1.poll();
                        int aux2=col2.poll();
                        resp=resp+(aux1*aux2)+" ";
                    }
                    System.out.println(resp);
                }
                leeArc.close();
            }
        }
}
