/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg9.triangles;

import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class Triangles {

    
    private static boolean esTriangulo(int a, int b, int c)
    {
        
        return a+b > c && b+c > a && c+a > b;     
        
    }
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int tope = sc.nextInt();
        int i,a,b,c;
        double promedio =0;
        
        for(i =0; i< tope; i++)
        {
            a = sc.nextInt();
            b = sc.nextInt();
            c = sc.nextInt();
            
            if(esTriangulo(a,b,c))
                System.out.println(1);
            else
                System.out.println(0);
        }
        
    }
    
}
