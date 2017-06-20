import java.util.Scanner;

public class Wc_ascii {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String[] cadena = sc.nextLine().split(",");
        
        int i;
        
        for(i=0; i<cadena.length; i++)
        {
            cadena[i] = cadena[i].replace(" ", "");
            int car = Integer.parseInt(cadena[i]);
            
            if(car !=32)
            {
                System.out.print(Character.toString((char) car));
            }
            else
            {
                System.out.print(" ");
            }
            
        }
        
    }
    
}
