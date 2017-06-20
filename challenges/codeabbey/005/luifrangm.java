import java.util.Scanner;

public class MinimumofThree {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de trios y los valores de cada uno");
        
        int num = sc.nextInt();
        int i,j, menor = 0;
        int[][] Vec = new int[num][3];
        
        for(i =0; i< num; i++)
        {
            for(j=0; j<3; j++)
            {
                Vec[i][j] = sc.nextInt();
                
                if(j==0)
                {
                    menor = Vec[i][j];
                }
                
                if(j>0)
                {
                    if(menor > Vec[i][j])
                    {
                        menor = Vec[i][j];
                    }
                }
            }
            System.out.println(menor);
        }
        
    }
    
}
