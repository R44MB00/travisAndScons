/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg17.arraychecksum;

import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class ArrayCheckSum {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        long[] vec = new long[num];
        
        int i;
        long resultado=0, limite = 10000007;
        
        
        for(i=0; i<num; i++)
        {
            vec[i] = sc.nextLong();
            resultado = ((resultado + vec[i]) * 113);
            
            if(resultado >= limite)
            {
                resultado = (resultado % limite);
            }
            
            
        }
        
        System.out.println(resultado);
        
    }
    
}
