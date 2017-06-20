import java.util.Scanner;

public class CollatzSequence {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int[] vec = new int[num];
        int[] suma = new int[num];
        int i,res=0;
        
        for(i=0; i<num; i++)
        {
            vec[i] = sc.nextInt();
            res = vec[i];
            
            while(res!=1)
            {
                if(res%2 == 0)
                {
                    res = res/2;
                }
                else
                {
                    res = (3 * res) + 1;
                }
                suma[i] = (suma[i] + 1);
            }
            res = 0;
        }
        
        for(i=0; i<num; i++)
        {
            System.out.println(suma[i]);
        }
        
    }
    
}
