import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de números y los números a sumar");
        
        int suma=0;
        int num = sc.nextInt();
        int i;
        int[] Vec01 = new int[num];
        
        for(i =0; i< num; i++)
        {
            Vec01[i] = sc.nextInt();
            suma +=Vec01[i];
        }
        
        System.out.println(suma);
        
    }
    
}
