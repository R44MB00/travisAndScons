import java.util.Scanner;
public class Solution
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);  
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            double r = 1;
            int x = read.nextInt();
            int iter = read.nextInt();
            for (int j=0; j<iter; j++)
            {
                r = (r + (x/r))/2;
            }
            System.out.print(r +" ");            
        }
    }  
}