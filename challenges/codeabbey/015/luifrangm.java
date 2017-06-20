/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg15.maximumofarray;

import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class Maximumofarray {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
         Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los 300 números");
        
        int minimo=0, maximo=0;
        int i;
        int[] Vec01 = new int[300];
        
        for(i =0; i< 300; i++)
        {
            Vec01[i] = sc.nextInt();
            
            if(Vec01[i] < minimo)
            {
                minimo = Vec01[i];
            }
            
            if(Vec01[i] > maximo)
            {
                maximo = Vec01[i];
            }
        }
        
        System.out.println("Valor mínimo: " + minimo );
        System.out.println("Valor máximo: " + maximo );
        
    }
    
}
