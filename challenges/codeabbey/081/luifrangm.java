import java.util.Scanner;

public class BitCount {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int i,a,b,c,d = 0,suma;
        
        for(i=0; i<num; i++)
        {
            
            a = sc.nextInt();
            b = 2;
            c = 1;
            suma = 0;
            
            if(a > 0)
            {
                while(a >= b)
                {
                    c = (a%b);
                    d = (a/b);

                    if(c == 1)
                    {
                        suma ++;
                    }
                    a = d;
                }

                if(d == 1)
                {
                    suma ++;
                }
            }
            else
            {
                int[] neg = new int[32];
                int j=31;
                
                a = a * (-1);
                
                do
                {
                    c = (a%b);
                    d = (a/b);

                    neg[j] = c;
                    j--;
                    a = d;
                    
                }while(a >= b);
                
                if(d == 1)
                {
                    neg[j] = d;
                }
                
                for(j =0; j<32; j++)
                {
                    if(neg[j] == 0)
                    {
                        neg[j] = 1;
                    }
                    else
                    {
                        neg[j] = 0;
                    }
                }
                
                j=31;
                
                boolean aux;
                
                do
                {
                    aux = false;
                    if(neg[j] == 0)
                    {
                        neg[j] = 1;
                    }
                    else
                    {
                        neg[j] = 0;
                        aux = true;
                    }
                    
                    j--;
                    
                }while((aux) && (j>=0));
                
                suma = 0;
                
                for(j=0; j<32; j++)
                {
                    if(neg[j] == 1)
                    {
                        suma ++;
                    }
                }
            }
            
            
            System.out.println(suma);
            
        }
        
    }
    
}
