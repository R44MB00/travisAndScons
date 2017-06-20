
package codeevalmedium;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;
import java.util.Iterator;

/**
 *
 * @author VICTOR
 */
public class LarPal {
    public static void main(String[] args) throws FileNotFoundException {
        String fra, resp;
        int numLin, pos, com1, com2;
        ArrayList frases= new ArrayList();
        String fraVec[][];
        String ruta="C:\\Users\\VICTOR\\Documents\\Aprueba.txt";
        File file = new File(ruta);
        //File file = new File(args[0]);
        try (Scanner leeArc = new Scanner(file)) {
           numLin=Integer.parseInt(leeArc.nextLine().trim());
           while (leeArc.hasNext()){
                fra=(leeArc.nextLine());
                frases.add(new Frase(fra.length(),fra));
            }
            leeArc.close();
        }
        Collections.sort(frases, null);

        Iterator itFra=frases.iterator();
        for (int i=0;i<numLin;i++){
            Frase unaFrase=(Frase)itFra.next();
            System.out.print(unaFrase.getPalab()+"\n");
        }
    }
    
    public static class Frase implements Comparable{ 
        int nu;
        String palab;
        public Frase(int nu, String palab){
            this.nu=nu;
            this.palab=palab;
        }

        public int getNu() {
            return nu;
        }

        public void setNu(int nu) {
            this.nu = nu;
        }

        public String getPalab() {
            return palab;
        }

        public void setPalab(String palab) {
            this.palab = palab;
        }

        @Override
        public int compareTo(Object o) {
            Frase f1=(Frase)o;
            //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
            return  f1.getNu()-nu;
        }
    }
    
    
    
}
