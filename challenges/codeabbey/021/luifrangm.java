import java.util.Scanner;

public class ArrayCounters {

        public static void main(String[] args) {
       
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int m = sc.nextInt();
        int n = sc.nextInt();
        
        int i,j=0,num;
        int[] vec = new int[20];
        int[] numeros = new int[m];
        
        for(i=0; i<m; i++)
        {
            numeros[i] = sc.nextInt();
            j = numeros[i];
            vec[j] = (vec[j] + 1);
        }
        
        for(i=0; i<20; i++)
        {
            if(vec[i]!= 0)
            {
                System.out.println(vec[i]);
            }
        }
        
        
        
    }
    
}
