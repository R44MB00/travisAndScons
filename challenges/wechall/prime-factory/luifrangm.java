import static java.lang.Math.sqrt;

public class Wc_primefactory {

    public static void main(String[] args) {
        
        int[] Primos = GenerarPrimos(1000000, 1000999);

        int resultado;
        int cuenta = 0;
        
        for (int numero = 0; numero<1000; numero ++)
        {
            resultado = SumarDigitos(Primos[numero]);
            
            if(EsPrimo(resultado))
            {
                System.out.println(Primos[numero]);
                cuenta ++;
            }
            
            if(cuenta>1)
            {
                break;
            }
            
        }
    }
    
    
    private static int[] GenerarPrimos(int LimInf, int LimSup)
        {
            int[] Primos = new int[1000];
             
            int i,j=0;

            for (i = LimInf; i <= LimSup;i++ )
            {
                if(EsPrimo(i))
                {
                    Primos[j] = i;
                    j++;
                }
            }

            return Primos;

        }


    private static Boolean EsPrimo(int Num)
    {

        if(Num == 2)
        {
            return true;
        }
        
        if(Num % 2 == 0)
        {
            return false;
        }
        
        int Entero = (int) Math.floor(sqrt(Num));

        int i;
        Boolean Sw = true;

        for (i = 3; i < Entero; i+=2)
        {
            if(Num % i ==0)
            {
                Sw = false;
            }
        }

        return Sw;
    }
    
    public static int SumarDigitos(int Num)
    {

        int suma = 0;

        String numero = String.valueOf(Num);
        int tope = numero.length();
        int i;

        for(i=0;i<tope;i++)
        {
            suma = suma + Integer.parseInt(numero.substring(i,i+1));
        }

        return suma;

    }
    
}
