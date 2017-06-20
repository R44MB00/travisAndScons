import java.util.Scanner;

public class FahrenheitToCelsius {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de temperaturas y los valores de cada una");
        
        int num = sc.nextInt();
        int i;
        Double temp=0.0;
        
        for(i =0; i< num; i++)
        {
            temp = (sc.nextDouble()-32)/1.8;
            System.out.println(Redondear(temp));
        }
        
    }
    
    
    private static int Redondear(Double num)
    {
        
        int entero = num.intValue();
        int decimal = (int) ((num - entero) * 10);

        if(decimal >= 5 || decimal <= -5)
        {
            if(entero > 0)
            {
                entero = entero + 1;
            }
            else
            {
                entero = entero - 1;
            }
        }

        return entero;

    }
    
    
}
