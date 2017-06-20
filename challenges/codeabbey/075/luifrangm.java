import java.util.Scanner;

public class YachtOrDicePoker {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int dado,i,j,par,trio,fullhouse,four,yacht;
        
        for(i=0; i<num; i++)
        {
            int[] vec = new int[7];
            
            for(j=1; j<6; j++)
            {
                dado = sc.nextInt();
                vec[dado] = vec[dado] + 1;
            }
            
            par = 0;
            trio = 0;
            fullhouse = 0;
            four = 0;
            yacht = 0;
            
            for(j=1; j<7; j++)
            {
                switch(vec[j])
                {
                    case 2:
                        par++;
                        break;
                    case 3:
                        trio ++;
                        break;
                    case 4:
                        four ++;
                    case 5:
                        yacht ++;
                }
                 
            }
            
            if((vec[1] == 1) && (vec[2] == 1) && (vec[3] == 1) && (vec[4] == 1) && (vec[5] == 1) )
            {
                System.out.println("small-straight");
            }else
            {
                if((vec[2] == 1) && (vec[3] == 1) && (vec[4] == 1) && (vec[5] == 1) && (vec[6] == 1) )
                {
                    System.out.println("big-straight");
                }
                else
                {
                    if(par > 0)
                    {
                        if(trio > 0)
                        {
                          System.out.println("full-house");  
                        }else
                        {
                            if(par > 1)
                            {
                                System.out.println("two-pairs");
                            }
                            else
                            {
                                System.out.println("pair");
                            }
                        }
                    }
                    else
                    {
                        if(trio >0)
                        {
                            System.out.println("three");
                        }
                        else
                        {
                            if(four > 0)
                            {
                                System.out.println("four");
                            }
                            else
                            {
                                if(yacht > 0)
                                {
                                    System.out.println("yacht");
                                }
                                else
                                {
                                    System.out.println("none");
                                }
                                
                            }
                            
                        }
                    }
                }
            }
            
            
            
            
            
            
            
            
            
        }
        
    }
    
}
