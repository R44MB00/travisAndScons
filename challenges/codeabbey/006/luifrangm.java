import java.util.Scanner;

public class Rounding {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de pares y los valores de cada uno");
        
        int num = sc.nextInt();
        int i,j, entero = 0;
        float decimal;
        int[][] Vec = new int[num][2];
        
        for(i =0; i< num; i++)
        {
            for(j=0; j<2; j++)
            {
                Vec[i][j] = sc.nextInt();
                
                if(j>0)
                {
                    entero = Vec[i][j-1] / Vec[i][j];
                    decimal = ((Vec[i][j-1] % Vec[i][j]) *10) /Vec[i][j];
                    
                    if(decimal >= 5 || decimal < -5)
                    {
                        if(entero > 0)
                        {
                            System.out.println(entero + 1);
                        }
                        else
                        {
                            System.out.println(entero - 1);
                        }
                    }
                    else
                    {
                        System.out.println(entero);
                    }
                            
                }
            }
        }
        
    }
    
}
