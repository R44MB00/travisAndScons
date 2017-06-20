
package codeevalhard;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

/**
 *
 * @author Vicayala82
 */
public class SpiralPrinting {
    public static void main(String[] args) throws IOException {
         String linea, resp;
            String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
            File file = new File(ruta);
            //File file = new File(args[0]);
            try (Scanner leeArc = new Scanner(file)) {
               while (leeArc.hasNext()){
                    resp="";
                    linea=(leeArc.nextLine()).trim();
                    Scanner leeEle=new Scanner(linea);
                    leeEle.useDelimiter(";");
                    int fil=Integer.parseInt(leeEle.next().trim());
                    int col=Integer.parseInt(leeEle.next().trim());
                    String [][] mat=new String [fil][col];
                    String numeros =leeEle.next().trim();
                    Scanner numCon=new Scanner(numeros);
                    for (int i=0;i<fil;i++){
                        for (int j=0;j<col;j++){
                            mat[i][j]=numCon.next().trim();
                        }
                    }
                    int limSup=0;
                    int limInf=fil;
                    int limIzq=0;
                    int limDer=col;
                    int celTot=fil*col;
                    int c=0;
                    while(c<celTot){
                        for(int i=limSup; i<limDer;i++){
                            resp=resp+mat[limSup][i]+" ";
                            c++;
                        }
                        limSup=limSup+1;
                        for(int i=limSup; i<limInf;i++){
                            resp=resp+mat[i][limDer-1]+" ";
                            c++;
                        }
                        limDer=limDer-1;
                        for(int i=limDer-1; i>=limIzq;i--){
                            resp=resp+mat[limInf-1][i]+" ";
                            c++;
                        }
                        limInf=limInf-1;
                        for(int i=limInf-1; i>=limSup;i--){
                            resp=resp+mat[i][limIzq]+" ";
                            c++;
                        }
                        limIzq=limIzq+1;
                        
                    }
                    
                    System.out.println(resp.trim());
                    
                }
                leeArc.close();
            }
    }
}
