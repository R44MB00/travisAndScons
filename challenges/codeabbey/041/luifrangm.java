import java.util.Scanner;

public class MedianOfThree {

    
    private static int[] ordenaVector(int[] Vector)
    {
        
        int tope = Vector.length;
        int i,j,tmp;
        
        for(i = 0; i < tope-1; i++)
        {
            for(j = 0; j< tope-1; j++)
            {
                if(Vector[j]<Vector[j+1])
                {
                   tmp = Vector[j];
                   Vector[j] = Vector[j+1];
                   Vector[j+1] = tmp;
                }
            }
        }
        
        return Vector;
    }
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de trios y los valores de cada uno");
        
        int num = sc.nextInt();
        int i;
        int[] Vector = new int[num];
        
        for(i =0; i< num; i++)
        {
            Vector[0] = sc.nextInt();
            Vector[1] = sc.nextInt();
            Vector[2] = sc.nextInt();
            Vector = ordenaVector(Vector);
            System.out.println(Vector[1]);
        }
        
    }
    
}
