import java.util.Scanner;
public class Solution
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {   
            int a = read.nextInt();
            int b = read.nextInt();
            int c = read.nextInt();
            if ((a > b && a < c) || (a < b && a > c))
            {
                System.out.print(a +" ");            
            }
            else if ((b > a && b < c) || (b < a && b > c))
            {
                System.out.print(b +" ");            
            }
            else if ((c < a && c > b) || (c > a && c < b))
            {
                System.out.print(c +" ");   
            }
        }     
    }
}