import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);        
        int n = read.nextInt();  
        int vec[] = new int [n];
        for (int i=0; i<n; i++)
        {
            vec[i] = read.nextInt();
        }       
        int aux = 0; 
        int cam = 0; 
        int rec = 1;
        boolean x = false;
        for (int i=1; i<n; i++)
        {
            for (int j=0; j<n-i; j++)
            {
                if (vec[j] > vec[j+1])
                {
                    aux = vec[j];
                    vec[j] = vec[j+1];
                    vec[j+1] = aux;
                    cam++;
                    x = true;
                }
            }
            if (x == true)
            {
                rec++;
                x = false;
            }
            else
                break;
        }
        System.out.print(rec +" "+ cam);
    }   
}