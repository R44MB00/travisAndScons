/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg11.sumofdigits;

import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class SumOfDigits {

    
    private static int SumaDigitos(int num)
    {
        
        int suma =0,div=0;
        
        while(num >= 10)
        {
            suma = suma + (num % 10);
            div = num / 10;
            num = div;
        }
        
        suma = suma + div;
        
        return suma;
    }
    
    public static void main(String[] args) {
        
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de líneas de números para sumar sus digitos");
        
        int tope = sc.nextInt();
        int i,num,suma = 0;
        
        for(i =0; i< tope; i++)
        {
            num = sc.nextInt();
            num = num * sc.nextInt();
            num = num + sc.nextInt();
            System.out.println(SumaDigitos(num));
        }
        
        
    }
    
}
