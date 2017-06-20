import java.util.Scanner;
import java.util.ArrayList;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);  
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            ArrayList<Integer> vector = new ArrayList<>();
            vector.add(read.nextInt());
            boolean band = false;
            int j=0;
            while (band == false)
            {
                int raised = vector.get(j)*vector.get(j);
                int truncate = nuevo_valor(raised);                                
                for (int x=0; x<vector.size();x++)
                {
                    if (vector.get(x) == truncate)
                    {
                        System.out.print(j+1 +" ");
                        band = true;
                    }                    
                }
                vector.add(truncate);
                j++;
            }
        }
    }  
    
    public static int nuevo_valor(int n)
    {
        String aux = String.valueOf(n);
        if (digito(n) < 8)
        {
            while (aux.length() < 8)
                aux = "0" + aux;            
        }
        String aux2 = String.valueOf(aux.charAt(2)+""+aux.charAt(3)+""+aux.charAt(4)+""+aux.charAt(5));
        int truncate = Integer.parseInt(aux2);
        return truncate;
    }
    
    public static int digito(int n)
    {
        int ndig = 0;
        while (n > 0)
        {
            n = n / 10;
            ndig++;
        }
        return ndig;
    }
}