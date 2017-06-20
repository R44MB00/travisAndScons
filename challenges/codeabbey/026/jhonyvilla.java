import java.util.Scanner;
public class Prueba 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);        
        int n = read.nextInt();          
        for (int i=0; i<n; i++)
        {
            int a = read.nextInt();
            int b = read.nextInt(); 
            int lcm = a*b;
            while (a != b)
            {
                if (a > b)
                    a = a-b;
                if (a < b)
                    b = b-a;                
            }
            int gcd = a;
            lcm = lcm/gcd; 
            System.out.print("("+ gcd +" "+ lcm +") ");
        }
    }  
}