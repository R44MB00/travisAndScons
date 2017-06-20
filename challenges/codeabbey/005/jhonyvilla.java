import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            int num = read.nextInt();
            int num2 = read.nextInt();
            int num3 = read.nextInt();
            if ((num < num2) && (num < num3))            
                System.out.print(num + " ");            
            else if ((num2 < num) && (num2 < num3))            
                System.out.print(num2 + " ");            
            else
                System.out.print(num3 + " "); 
        }
    }
}