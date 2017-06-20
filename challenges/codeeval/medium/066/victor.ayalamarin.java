
package codeevalmedium;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

/**
 *
 * @author vicayala82
 */
public class PascallTriang {
    public static void main(String[] args) throws IOException {
         String linea, resp;
         int tamPas;
            String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
            File file = new File(ruta);
            //File file = new File(args[0]);
            try (Scanner leeArc = new Scanner(file)) {
               while (leeArc.hasNext()){
                    resp="";
                    tamPas=Integer.parseInt((leeArc.nextLine()).trim());
                    int matrPas [][]= new int [tamPas+1][tamPas+1];
                    matrPas [0][0]=1;
                    for (int i=1;i<tamPas+1;i++){
                        for (int j=0; j<i; j++){
                            if (j==0 || j==i-1){
                                matrPas[i][j]=1;
                            }else{
                                matrPas[i][j]=(matrPas[i-1][j-1]+matrPas[i-1][j]);
                            }
                        }
                    }
                    for (int i=0;i<tamPas+1;i++){
                        for(int j=0;j<i;j++){
                            resp=resp+matrPas[i][j]+" ";
                        }
                    }
                System.out.println(resp.trim());
                }
                leeArc.close();
            }
        }
}
