import java.util.Scanner;

public class BodyMassIndex {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite la cantidad de personas, su peso y estaura para calcular el IMC");
        
        int num = sc.nextInt();
        int i,peso;
        double estatura,IMC;
        
        for(i =0; i< num; i++)
        {
            peso = sc.nextInt();
            estatura = sc.nextDouble();
            IMC = peso / (estatura * estatura);
            
            if(IMC < 18.5)
            {
                System.out.println("Under");
            }
            else
            {
                if(IMC >= 18.5 && IMC < 25)
                {
                    System.out.println("Normal");
                }
            else
                {
                    if(IMC >= 25 && IMC < 30)
                    {
                        System.out.println("Over");
                    }
                    else
                        {
                            System.out.println("Obese");
                        }
                }
            }
        }
    }
    
}
