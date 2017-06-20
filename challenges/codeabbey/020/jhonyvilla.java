import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<=n; i++)
        {
            String cadena = read.nextLine();            
            int cont = 0;            
            for (int j = 0; j<cadena.length(); j++)
            {                
                char letra = cadena.charAt(j);                
                if (letra == 'a' || letra =='e' || letra =='i' || letra =='o' || letra =='u' || letra =='y')
                {
                    cont++;
                }
            }
            if (cont != 0)
                System.out.print(cont + " ");
        }
    }
}