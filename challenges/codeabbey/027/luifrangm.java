import java.util.Scanner;

public class BubbleSort {

        public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int i,j=0,aux,sumaP=0,sumaC=0;
        int[] vec = new int[num];
        boolean sw = false;
        
        for(i=0; i<num; i++)
        {
            vec[i] = sc.nextInt();
        }
        
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
                    sumaC++;
                    sw = false;
                }
            }
            sumaP++;
            j++;
        }
            
        System.out.println(sumaP + " " + sumaC);
    }
        
}
