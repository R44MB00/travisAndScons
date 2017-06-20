public class Main
{
    public static void main (String[] args)
    {
        int sum = 0;
        int howManyPrimes = 0;
        int first = 2;

        while (howManyPrimes < 1000) {
            if (esPrimo(first)) {
                sum += first;
                howManyPrimes++;
            }

            first++;
        }

        System.out.println(sum);
    }

public static boolean esPrimo(int numero){
        int contador = 2;
     boolean primo=true;
        while ((primo) && (contador!=numero)){
            if (numero % contador == 0){
            primo = false;
            }
            contador++;
        }
        return primo;
    }
}    
