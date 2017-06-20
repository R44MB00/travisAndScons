package solution;

import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in); 
        int cases = read.nextInt();
        for (int i=0; i<cases; i++)
        {
            int x = read.nextInt();
            int y = read.nextInt();
            int n = read.nextInt();
            int var1 = (y*n / (x+y));
            int var2 = (x*n / (x+y)); 
            int r1 = maximo((var1+1)*x, var2*y);
            int r2 = maximo(var1*x, (var2+1)*y);
            int solution = minimo(r1 , r2);
            System.out.print(solution +" ");            
        }
    } 
    
    public static int maximo(int n1, int n2)
    {
        int max = 0;
        if (n1 > n2)
            max = n1;
        else
            max = n2;
        return max;
    }
    
    public static int minimo(int n1, int n2)
    {
        int min = 0;
        if (n1 < n2)
            min = n1;
        else
            min = n2;
        return min;
    }
}
