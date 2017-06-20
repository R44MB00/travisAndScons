import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            float w = read.nextFloat();
            float h = read.nextFloat();
            double bmi = w/Math.pow(h, 2);            
            if (bmi < 18.5)
                System.out.print("under ");
            else if (bmi >= 18.5 && bmi < 25)
                System.out.print("normal ");
            else if (bmi >= 25 && bmi < 30)
                System.out.print("over ");
            else
                System.out.print("obese ");
        }
    }
}