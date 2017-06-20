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
            int num = read.nextInt();  
            int spd = 0;
            Vector<Integer> digito = new Vector<>();
            while (num > 0)
            {
                digito.add( num % 10);
                num = num / 10;            
            } 
            int mult = 1;
            for (int j = digito.size(); j > 0 ; j--)
            {
                spd = spd + (digito.get(j-1)*mult) ;
                mult++;            
            }
            System.out.print(spd +" ");            
        }     
    }
}