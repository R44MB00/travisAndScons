import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        float num = 0;
        float num2 = 0;
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            num = read.nextInt();
            num2 = read.nextInt();
            System.out.print(Math.round(num/num2) + " ");
        }
    }
}