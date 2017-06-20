import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        float f = 0;
        float c = 0;
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            f = read.nextInt();
            c = ((f - 32)*5/9);
            System.out.print(Math.round(c) + " ");
        }
    }
}