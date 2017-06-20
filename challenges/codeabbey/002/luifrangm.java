import java.util.Scanner;

public class SuminLoop {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de pares y los valores de cada uno");
        
        int num = sc.nextInt();
        int i;
        int[] Vec01 = new int[num];
        int[] Vec02 = new int[num];
        int[] Vec03 = new int[num];
        
        for(i =0; i< num; i++)
        {
            Vec01[i] = sc.nextInt();
            Vec02[i] = sc.nextInt();
            Vec03[i] = Vec01[i] + Vec02[i];
            System.out.println(Vec03[i]);
        }
        
    }
    
}
