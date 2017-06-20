public class Reto 
{   
    public static void main(String[] args) 
    { 
        int a=1846; int b=1835;
        for (int i=11111; i<=99999; i++)
        {            
            int op = ((a-b)*(i-a)^(i-b)>>a)<<b;
            if (op == 1737089024)
            {
                int suma =sumdigito(i);
                if (suma == 33)
                {
                    System.out.println(i);
                }
            }            
        }
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