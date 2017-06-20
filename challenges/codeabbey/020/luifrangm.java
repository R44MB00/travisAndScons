import java.util.Scanner;

public class VowelCount {

    
    private static int numVocales(String Cadena)
    {
        int i,j,suma=0;
        char[] Vocales = {'a','o','u','i','e','y'};
        char[] Frase = Cadena.toCharArray();
        
        for (i=0; i< Cadena.length(); i++)
        {
            for(j=0; j<6; j++)
            {
                if(Vocales[j] == Frase[i])
                {
                    suma ++;
                }
            }
        }
        
        return suma;
    }
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        sc.useDelimiter("\n");
        
        System.out.println("Digite la cantidad de frases y las frases para contar las vocales");
        
        int num = sc.nextInt();
        int i;
        
        String[] Frases = new String[num];
        
        for(i =0; i< num; i++)
        {
            Frases[i] = sc.next();
            System.out.println(numVocales(Frases[i]));
        }
        
    }
    
}
