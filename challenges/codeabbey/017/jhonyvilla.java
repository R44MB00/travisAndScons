import java.util.Scanner;
public class Prueba 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);
        int n = read.nextInt(); 
        int vec[] = new int[n];
        long resultado = 0;
        for (int i=0; i<n; i++)
        {  
            vec[i]= read.nextInt();
        }
        for (int i=0; i<vec.length; i++)
        {
            resultado = ((vec[i]+resultado)*113)%10000007;
        }
        System.out.print(resultado);
    }
}