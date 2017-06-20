/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg16.averageofanarray;

import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class AverageOfAnArray {

   
    private static int Redondear(Double num)
    {
        
        int entero = num.intValue();
        int decimal = (int) ((num - entero) * 10);

        if(decimal >= 5 || decimal <= -5)
        {
            if(entero > 0)
            {
                entero = entero + 1;
            }
            else
            {
                entero = entero - 1;
            }
        }

        return entero;

    }
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int tope = sc.nextInt();
        int i,j,num;
        double promedio =0;
        int[] Vec = new int[50];
        
        for(i =0; i< tope; i++)
        {
            j=0;
            num = sc.nextInt();
            
            while(num!=0)
            {
                Vec[j] = num;
                promedio = promedio + num;
                j++;
                num = sc.nextInt();
            }
            
            System.out.println(Redondear(promedio/j));
            promedio = 0;
        }
        
    }
    
}
