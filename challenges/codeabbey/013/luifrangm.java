/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg13.weightedsumofdigits;

import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class WeightedSumOfDigits {

    
    private static int lugar =1;
    
    private static int calcularDigitos(int num)
    {
        
        int digitos = 0;
        
        while(num >= 10)
        {
            num = num / 10;
            digitos++;
        }
        
        return digitos + 1;
        
    }
    
    private static int SumaPonderadaDigitos(int num)
    {
        
        int suma =0,div=0;
        
        while(num >= 10)
        {
            suma = suma + ((num % 10) * lugar);
            div = num / 10;
            num = div;
            lugar --;
        }
        
        
        
        suma = suma + div;
        
        if(suma == 0)
        {
            suma = num;
        }
        
        return suma;
    }
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de números para calcular la suma ponderada de sus digitos");
        
        int tope = sc.nextInt();
        int i,num;
        
        for(i =0; i< tope; i++)
        {
            num = sc.nextInt();
            lugar = calcularDigitos(num);
            System.out.println(SumaPonderadaDigitos(num));
            
        }
        
    }
    
}
