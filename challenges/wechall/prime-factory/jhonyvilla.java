public class PrimeFactory 
{   
    public static void main(String[] args) 
    { 
        int num = 1000000;
        int contpr=0;        
        while (contpr != 2)
        {
            if (primo(num) != 0)
            {
                int digito = sumdigito(num);
                if (primo(digito) != 0)
                {
                    contpr++;
                    System.out.println(num);
                }                
            }
            num++;
        } 
    }

    public static int primo(int num)
    {
        int a=0;
        for (int i = 1; i < (num + 1); i++)
        {
            if (num%i == 0)            
                a++; 
            if (a > 2)            
                break;
        }
        if (a == 2)        
            return num;        
        return 0;
    }

    public static int sumdigito(int num)
    {
        int resultado = 0;        
	   while (num > 0)
        {
            resultado += num % 10;
            num = num / 10;
        }        
        return resultado;
    }
}
