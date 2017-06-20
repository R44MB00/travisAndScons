/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codeevalmedium;

import static codeevalmedium.RemplazaCarac.nuevFra;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

/**
 *
 * @author VICTOR
 */
public class LowestUniqueNumber {
    public static void main(String[] args) throws FileNotFoundException {
        String linea, resp;
        ArrayList frases= new ArrayList();
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           while (leeArc.hasNext()){
                linea=(leeArc.nextLine());
                Scanner numeros= new Scanner(linea);
                ArrayList<String> numStr= new ArrayList<>();
                while (numeros.hasNext()){
                    numStr.add(numeros.next().trim());
                    }
                int tam=numStr.size();
                int numInt[]=new int[tam];
                for (int i=0;i<tam;i++){
                    numInt[i]=Integer.parseInt(numStr.get(i));
                }
                ArrayList<Integer> noRep=new ArrayList<>();
                for (int i=0;i<numInt.length;i++){
                    int aux=0;
                    for (int j=0;j<numInt.length;j++){
                        if (numInt[i]==numInt[j]){
                            aux=aux+1;
                        }
                    }
                    if (aux==1){
                        noRep.add(numInt[i]);
                    }
                }
                Collections.sort(noRep);
                if (!noRep.isEmpty()){
                    String auxSt=""+noRep.get(0);
                    System.out.println(numStr.indexOf(auxSt)+1);
                }else{
                    System.out.println("0");
                }
            }
            leeArc.close();
        }
    }
}
