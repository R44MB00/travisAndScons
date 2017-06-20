import java.util.Scanner;

public class Prueba 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {  
            int pvalor = read.nextInt();                   
            int incre = read.nextInt();
            int nterm = read.nextInt();
            int suma = 0;
            for (int j = 0; j < nterm; j++)            
                suma = suma + pvalor +(incre * j);
            System.out.print(suma + " ");            
        }     
    }
}