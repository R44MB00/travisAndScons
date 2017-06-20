import java.util.Scanner;
import java.util.Vector;

public class Solution
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();        
        for (int i=0; i<n; i++)
        {  
            Vector<Integer> datos = new Vector<>();
            float suma = 0;
            float cont = 0; 
            datos.add(read.nextInt());
            while (datos.lastElement() != 0)
            {
                datos.add(read.nextInt());
            }
            for (int j = 0; j < datos.size()-1; j++)
            {
                suma = suma + datos.get(j);
                cont++;
            }
            float prom = suma/cont;
            System.out.print(Math.round(prom) + " ");
        }     
    }
}