//Reto: Sum of Primes 

import java.io.*;
import javax.swing.*; 
public class Main{

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int primos[];
        int k, i=0, suma=0;
 
//CALCULAR PRIMOS
        primos=new int[1000];
        for(int numero=1;i<1000;numero++)
        {
            k=0;
            for(int j=1;j<=numero;j++)
            {
                if(numero%j==0)
                {
                    k++;
                }
            }
            if(k==2)
            {
                primos[i]=numero;
                i++;
            }
        }

//SUMA
        for(int cont=0;cont<1000;cont++){
        suma=suma+primos[cont];
        }
        System.out.println(suma) ;
    }  
}
