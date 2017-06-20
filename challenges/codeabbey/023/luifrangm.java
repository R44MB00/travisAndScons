import java.util.Scanner;

public class BubbleInArray {

        public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite los valores de entrada");
        
        int num=0,i,tope=0,aux,suma=0;
        int[] vec = new int[100];
        
        
        while(num>=0)
        {
            num = sc.nextInt();
            if(num >=0)
            {
                vec[tope] = num;
                tope++;
            }
        }
        
        for(i=0; i<tope-1; i++)
        {
            if(vec[i] > vec[i+1])
            {
                aux = vec[i];
                vec[i] = vec[i+1];
                vec[i+1] = aux;
                suma++;
            }
        }
        
        long resultado =0, limite = 10000007;

        for(i=0; i<tope; i++)
        {
            resultado = (resultado + vec[i]) * 113;
            
            if(resultado >= limite)
            {
                resultado = (resultado % limite);
            }
        }
            
        System.out.println(suma + " " + resultado);
    }
    
}
