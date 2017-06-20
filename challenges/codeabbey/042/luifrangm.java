import java.util.Scanner;

public class BlackJackCounting {

    private static String[] naipes;
    
    
    public static void main(String[] args) {
        
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int i=0;
        String linea ="";
        int j;
        String carta;
        int valor=0,suma = 0;
        boolean ACE=false;
            
        while(i<num) 
        {
            linea = sc.nextLine();
            
            if(!linea.equals(""))
            {
                naipes = linea.split(" ");
                i++;
                
                suma =0;
                
                for(j=0; j<naipes.length; j++)
                {
                    carta = naipes[j];

                    switch(carta)
                    {
                        case "1":
                            valor = 1;
                            break;
                        case "2":
                            valor = 2;
                            break;
                        case "3":
                            valor = 3;
                            break;
                        case "4":
                            valor = 4;
                            break;
                        case "5":
                            valor = 5;
                            break;
                        case "6":
                            valor = 6;
                            break;
                        case "7":
                            valor = 7;
                            break;
                        case "8":
                            valor = 8;
                            break;
                        case "9":
                            valor = 9;
                            break;
                        case "T":
                            valor = 10;
                            break;
                        case "J":
                            valor = 10;
                            break;
                        case "K":
                            valor = 10;
                            break;
                        case "Q":
                            valor = 10;
                            break;
                        case "A":
                            valor = 1;
                            ACE = true;
                            break;
                    }
                    suma = suma + valor;
                }
                
                if(ACE)
                {
                    ACE = false;

                    if((suma + 10)<=21)
                    {
                        suma = suma +10;

                        if(suma > 0)
                        {
                            if(suma > 21)
                            {
                                System.out.println("Bust");
                            }
                            else
                            {
                                System.out.println(suma);
                            }
                        }
                    }
                    else
                    {
                        if(suma > 0)
                        {
                            if(suma > 21)
                            {
                                System.out.println("Bust");
                            }
                            else
                            {
                                System.out.println(suma);
                            }
                        }
                    }
                }
                else
                {
                    if(suma > 0)
                    {
                        if(suma > 21)
                        {
                            System.out.println("Bust");
                        }
                        else
                        {
                            System.out.println(suma);
                        }
                    }
                }
                
            }
            
        }
        
    }
    
}
