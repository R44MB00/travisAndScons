/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg14.modularcalculator;

import java.math.BigDecimal;
import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class ModularCalculator {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        BigDecimal suma = sc.nextBigDecimal();
        boolean sw = true;
        String linea;
        String[] cad;
        BigDecimal num= new BigDecimal(5);
        long aux;
        
        while(sw)
        {
            linea = sc.nextLine();
            cad = linea.split(" ");
            
            if(!linea.equals(""))
            {
                aux = Long.valueOf(cad[1]);
                num = BigDecimal.valueOf(aux);
                
                if(cad[0].equals("%"))
                {
                    sw = false;
                }
                else
                {
                    if(cad[0].equals("+"))
                    {
                        suma = suma.add(num);
                    }
                    else
                    {
                        suma = suma.multiply(num);
                    }
                }
            }
        }
        
        suma = suma.remainder(num);
        
        System.out.println(suma);
        
    }
    
}
