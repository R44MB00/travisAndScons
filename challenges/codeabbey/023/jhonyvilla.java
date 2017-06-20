import java.util.Scanner;
import java.util.ArrayList;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);        
        ArrayList<Integer> numero = new ArrayList<>();
        int n = read.nextInt();
        while (n != -1)
        {
            numero.add(n);
            n = read.nextInt();
        }
        int swap = 0;
        for (int i=0; i<numero.size()-1; i++)
        {
            if (numero.get(i) > numero.get(i+1))
            {
                int aux = numero.get(i);
                numero.set(i, numero.get(i+1));
                numero.set(i+1, aux);
                swap++;
            }
        }
        long cs = checksum(numero);
        System.out.print(swap +" "+ cs);
    }  
    
    public static long checksum(ArrayList<Integer> vec)
    {
        long resultado = 0;
        for (int i=0; i<vec.size(); i++)                    
            resultado = ((vec.get(i)+resultado)*113)%10000007;        
        return resultado;
    }
}