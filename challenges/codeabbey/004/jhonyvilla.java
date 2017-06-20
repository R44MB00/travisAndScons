import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        int num = 0;
        int num2 = 0;
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            num = read.nextInt();
            num2 = read.nextInt();
            if (num < num2)           
            {
                System.out.print(num + " ");
            }
            else
                System.out.print(num2 + " ");
        }
    }
}