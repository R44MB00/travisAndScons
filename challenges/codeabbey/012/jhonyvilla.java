import java.util.Scanner;
public class Solution
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);        
        int n = read.nextInt();          
        for (int i=0; i<n; i++)
        {
            int dia, hor, min, seg;
            int d1 = read.nextInt();
            int h1 = read.nextInt();
            int m1 = read.nextInt();
            int s1 = read.nextInt();
            int d2 = read.nextInt();
            int h2 = read.nextInt();
            int m2 = read.nextInt();
            int s2 = read.nextInt();
            if (s2 >= s1)
                seg = s2-s1;
            else
            {
                m2--;
                s2 = s2+60;
                seg = s2-s1;
            }
            if (m2 >= m1)
                min = m2-m1;
            else
            {
                h2--;
                m2 = m2+60;
                min = m2-m1;
            }
            if (h2 >= h1)
                hor = h2-h1;
            else
            {
                d2--;
                h2 = h2+24;
                hor = h2-h1;
            }
            dia = d2-d1;
            System.out.print("("+ dia +" "+ hor +" "+ min +" "+ seg +") ");
        }        
    } 
}