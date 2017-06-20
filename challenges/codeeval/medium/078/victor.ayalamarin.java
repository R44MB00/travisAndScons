/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codeevalmedium;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

/**
 *
 * @author VICTOR
 */
public class Soduko {
    public static void main(String[] args) throws IOException {
         String linea, resp;
            String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
            File file = new File(ruta);
            //File file = new File(args[0]);
            try (Scanner leeArc = new Scanner(file)) {
               while (leeArc.hasNext()){
                    resp="";
                    linea=(leeArc.nextLine()).trim();
                    Scanner leeLin = new Scanner(linea);
                    leeLin.useDelimiter(";");
                    int tamMat=Integer.parseInt(leeLin.next().trim());
                    String numeros=leeLin.next();
                    Scanner leeNum =new Scanner(numeros);
                    leeNum.useDelimiter(",");
                    boolean col=true;
                    boolean fil=true;
                    int matSod[][]=new int [tamMat][tamMat];
                    for (int i=0;i<tamMat;i++){
                        for (int j=0; j<tamMat; j++){
                             matSod[i][j]=leeNum.nextInt();
                             if (matSod[i][j]>tamMat){
                                 col=false;
                             }
                        }
                    }
                    for (int i=0;i<tamMat;i++){
                        for(int j=0;j<tamMat;j++){
                            if (j!=0){
                                for (int k=0;k<j;k++){
                                    if(matSod[i][k]==matSod[i][j]){
                                        fil=false;
                                    }
                                }
                            }
                        }
                    }
                    for (int i=0;i<tamMat;i++){
                        for(int j=0;j<tamMat;j++){
                            if (j!=0){
                                for (int k=0;k<j;k++){
                                    if(matSod[k][i]==matSod[j][i]){
                                        col=false;
                                    }
                                }
                            }
                        }
                    }
                    if (col && fil){
                      System.out.println("True");  
                    }else{
                      System.out.println("False");
                    }
                }
                leeArc.close();
            }
        }
    
}
