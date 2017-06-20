import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int cases = read.nextInt();
        for (int i = 0; i < cases; i++)
        {
            long a = read.nextLong();
            long c = read.nextLong();
            long m = read.nextLong();
            long x0 = read.nextLong();            
            int n = read.nextInt();
            long nth = 0;
            for (int j = 0; j < n; j++)
            {
                nth = (a * x0 + c)%m;
                x0 = nth;
            }
            System.out.print(nth +" ");
        }
    }    
}
