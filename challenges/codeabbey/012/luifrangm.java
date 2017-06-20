/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg12.moduleandtimedifference;

import java.util.Scanner;

/**
 *
 * @author LUIFRAN
 */
public class ModuleAndTimeDifference {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int[] res = new int[num];
        int i,j,suma,aux;
        
        for(i=0; i<num; i++)
        {
            suma = 0;
            for(j=0; j<4; j++)
            {
                aux = sc.nextInt();
                
                if(j==0)
                {
                    suma = suma + (aux * 86400);
                }
                else
                {
                    if(j==1)
                    {
                        suma = suma + (aux * 3600);
                    }
                    else
                    {
                        if(j==2)
                        {
                            suma = suma + (aux * 60);
                        }
                        else
                        {
                            suma = suma + aux;
                        }
                    }
                        
                }
            }
            res[i] = suma;
            suma =0;
            
            for(j=4; j<8; j++)
            {
                aux = sc.nextInt();
                
                if(j==4)
                {
                    suma = suma + (aux * 86400);
                }
                else
                {
                    if(j==5)
                    {
                        suma = suma + (aux * 3600);
                    }
                    else
                    {
                        if(j==6)
                        {
                            suma = suma + (aux * 60);
                        }
                        else
                        {
                            suma = suma + aux;
                        }
                    }
                        
                }
            }
            res[i] = suma - res[i];
        }
        
        aux = 0;
        int dia=0,hora=0,min=0,seg=0,resto=0;
        
        for(i=0; i<num; i++)
        {
            dia = res[i]/86400;
            resto = res[i]%86400;
            
            if(resto >= 3600)
            {
                hora = resto/3600;
                resto = resto%3600;
            }
            else
            {
                hora = 0;
            }
            
            if(resto >= 60)
            {
                min = resto/60;
                seg = resto%60;
            }
            else
            {
                min = 0;
                seg = resto;
            }
            
            System.out.println("(" + dia + " " + hora + " " + min + " " + seg + ")");
        }
        
    }
    
}
