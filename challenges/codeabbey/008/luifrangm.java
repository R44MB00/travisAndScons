/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg8.arithmeticprogression;

import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class ArithmeticProgression {

    
    private static int sumaProgresion(int base,int inc, int n)
    {
        int suma = base,i;
        
        for (i = 0; i < n-1; i++)
        {
            base = base + inc;
            suma = suma + base;
        }
        
        return suma;
    }
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int tope = sc.nextInt();
        int i;
        
        for(i =0; i< tope; i++)
        {
            System.out.println(sumaProgresion(sc.nextInt(),sc.nextInt(),sc.nextInt()));
        }
        
    }
    
}
