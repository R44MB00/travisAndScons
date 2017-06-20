import java.util.Scanner;

public class DiceRolling {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de números y los números");
        
        int tope = sc.nextInt();
        int i,entero;
        Double num;
        
        for(i =0; i< tope; i++)
        {
            num = sc.nextDouble() * 6;
            entero = num.intValue() + 1;
            System.out.println(entero);
        }
        
    }
    
}
