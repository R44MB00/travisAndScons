/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fluid;

/**
 *
 * @author glopez
 */
public class SwapElements {
    
    public static void main(String Args[]){
        logic("1 2 3 4 5 6 7 8 9 10 : 0-1, 1-3");
    }
    
    public static void logic(String line){
        String[] parts = line.split(" : ");
        String[] strn = parts[0].split(" ");
        String[] swap = parts[1].split(", ");
        String[] range;
        int low = 0;
        int hig = 0;
        String aux = "";
        for (int i = 0; i < swap.length; i++) {
            range = swap[i].split("-");
            low = Integer.parseInt(range[0]);
            hig = Integer.parseInt(range[1]);
            aux = strn[low];
            strn[low] = strn[hig];
            strn[hig] = aux;
        }
        String print = "";
        for (int i = 0; i < strn.length; i++) {
            print += strn[i] + " ";
        }
        System.out.println(print.trim());
    }
}
