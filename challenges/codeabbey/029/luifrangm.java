import java.util.Scanner;

public class SortWithIndexes {

        public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        
        int[] vec = new int[num];
        int[] idx = new int[num];
        int i,j,aux;
        boolean sw = false;
        
        for(i=0; i<num; i++)
        {
            vec[i] = sc.nextInt();
            idx[i] = i+1;
        }
        
        j=0;
        
        while((j<num) && (sw == false))
        {
            sw = true;
            for(i=0; i<num-1; i++)
            {
                if(vec[i] > vec[i+1])
                {
                    aux = vec[i];
                    vec[i] = vec[i+1];
                    vec[i+1] = aux;
                    aux = idx[i];
                    idx[i] = idx[i+1];
                    idx[i+1] = aux;
                    sw = false;
                }
            }
            j++;
        }
        
        for(i=0; i<num; i++)
        {
            System.out.print(idx[i] + " ");
        }
        
        
    }
    
}
