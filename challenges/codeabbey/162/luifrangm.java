import java.util.Scanner;

public class RubiksCube {

    
    private static byte[]I = new byte[8];
    private static byte[]L = new byte[12];
    private static byte[]C = new byte[12];
    private static byte[]R = new byte[12];
    private static byte[]D = new byte[8];
    private static String[]E;
    

    public static void main(String[] args) {
        
        InicializaVectores();
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        E = new String[num];
        int i,j;
        
        for(i=0; i<num; i++)
        {
            E[i] = sc.next();
            
            if(E[i].equals("L"))
            {
                
               for(j=0; j<3; j++)
               {
                   L = MovVerticalDw(L);
               }
               
               for(j=0; j<2; j++)
               {
                   I = MovLadoDw(I);
               }
               
            }
            
            if(E[i].equals("R"))
            {
                
               for(j=0; j<9; j++)
               {
                   R = MovVerticalDw(R);
               }
               
               for(j=0; j<6; j++)
               {
                   D = MovLadoDw(D);
               }
               
            }
            
            if(E[i].equals("U"))
            {
                MovUIzq();
                vueltaCaraU();
            }
            
            if(E[i].equals("D"))
            {
                MovDDer();
                vueltaCaraD();
            }
            
            if(E[i].equals("F"))
            {
                MovF();
                vueltaCara();
            }
            
            if(E[i].equals("B"))
            {
                MovB();
                vueltaCaraB();
            }
        }
        
        Resultado();
        
        
    }
    
    public static void Resultado()
    {
        
        int i,j=0,k;
        
        String[] Res = new String[10];
        
        for(i=0; i<12; i++)
        {
            if((L[i] != 0))
            {
                if((i>=0) && (i<=2))
                {
                    Res[L[i]] = "U";
                }else
                {
                    if((i>=3) && (i<=5))
                    {
                        Res[L[i]] = "F";
                    }else
                    {
                        if((i>=6) && (i<=8))
                        {
                            Res[L[i]] = "D";
                        }else
                        {
                            Res[L[i]] = "B";
                        }
                    }
                        
                }
            }
        }
        
        for(i=0; i<12; i++)
        {
            if((C[i] != 0))
            {
                if((i>=0) && (i<=2))
                {
                    Res[C[i]] = "U";
                }else
                {
                    if((i>=3) && (i<=5))
                    {
                        Res[C[i]] = "F";
                    }else
                    {
                        if((i>=6) && (i<=8))
                        {
                            Res[C[i]] = "D";
                        }else
                        {
                            Res[C[i]] = "B";
                        }
                    }
                        
                }
            }
        }
        
        for(i=0; i<12; i++)
        {
            if((R[i] != 0))
            {
                if((i>=0) && (i<=2))
                {
                    Res[R[i]] = "U";
                }else
                {
                    if((i>=3) && (i<=5))
                    {
                        Res[R[i]] = "F";
                    }else
                    {
                        if((i>=6) && (i<=8))
                        {
                            Res[R[i]] = "D";
                        }else
                        {
                            Res[R[i]] = "B";
                        }
                    }
                        
                }
            }
        }
        
        
        for(k=0; k<8; k++)
        {
            if(I[k] != 0)
            {
                j = I[k];
                Res[j] = "L";
            }
        }
        
        
        for(k=0; k<8; k++)
        {
            if(D[k] != 0)
            {
                j = D[k];
                Res[j] = "R";
            }
        }

        for(i=1; i<10; i++)
        {
            System.out.print(Res[i] + " ");
        }
        
    }
    
    private static byte[] MovLadoDw(byte[] Vec)
    {
        int j;
        byte aux;
        
        aux = Vec[7];

        for(j=7; j>0; j--)
        {
            Vec[j] = Vec[j-1];
        }
        
        Vec[0] = aux;
        
        return Vec;
    }
    
    private static byte[] Vuelta(byte[] Vec,int tope)
    {
        int i;
        byte aux = Vec[0];
        
        for(i=0; i<tope-1; i++)
        {
            Vec[i] = Vec[i+1];
        }
        
        Vec[tope-1] = aux;
        
        return Vec;
    }
    
    
    private static byte[] MovVerticalDw(byte[] Vec)
    {
        int j;
        byte aux;
        
        aux = Vec[11];

        for(j=11; j>0; j--)
        {
            Vec[j] = Vec[j-1];
        }
        
        Vec[0] = aux;
        
        return Vec;
    }
    
    private static void MovUIzq()
    {
        byte[] Vec = new byte[12];
        
        Vec[0] = I[0];
        Vec[1] = I[1];
        Vec[2] = I[2];
        
        Vec[3] = L[3];
        Vec[4] = C[3];
        Vec[5] = R[3];
        
        Vec[6] = D[2];
        Vec[7] = D[1];
        Vec[8] = D[0];
        
        Vec[9] = R[11];
        Vec[10] = C[11];
        Vec[11] = L[11];
        
        int i;
        
        for(i=0; i<3; i++)
        {
            Vec = Vuelta(Vec,12);
        }
        
        I[0] = Vec[0];
        I[1] = Vec[1];
        I[2] = Vec[2];
        
        L[3] = Vec[3];
        C[3] = Vec[4];
        R[3] = Vec[5];
        
        D[2] = Vec[6];
        D[1] = Vec[7];
        D[0] = Vec[8];
        
        R[11] = Vec[9];
        C[11] = Vec[10];
        L[11] = Vec[11];
        
    }
    
    private static void MovDDer()
    {

        byte[] Vec = new byte[12];
        
        Vec[0] = I[6];
        Vec[1] = I[5];
        Vec[2] = I[4];
        
        Vec[3] = L[5];
        Vec[4] = C[5];
        Vec[5] = R[5];
        
        Vec[6] = D[4];
        Vec[7] = D[5];
        Vec[8] = D[6];
        
        Vec[9] = R[9];
        Vec[10] = C[9];
        Vec[11] = L[9];
        
        int i;
        
        for(i=0; i<9; i++)
        {
            Vec = Vuelta(Vec,12);
        }
        
        I[6] = Vec[0];
        I[5] = Vec[1];
        I[4] = Vec[2];
        
        L[5] = Vec[3];
        C[5] = Vec[4];
        R[5] = Vec[5];
        
        D[4] = Vec[6];
        D[5] = Vec[7];
        D[6] = Vec[8];
        
        R[9] = Vec[9];
        C[9] = Vec[10];
        L[9] = Vec[11];
        
    }
    
    
    private static void MovF()
    {
        
        byte[] Vec = new byte[12];
        
        Vec[0] = D[4];
        Vec[1] = D[3];
        Vec[2] = D[2];
        
        Vec[3] = R[2];
        Vec[4] = C[2];
        Vec[5] = L[2];
        
        Vec[6] = I[2];
        Vec[7] = I[3];
        Vec[8] = I[4];
        
        Vec[9] = L[6];
        Vec[10] = C[6];
        Vec[11] = R[6];
        
        int i;
        
        for(i=0; i<3; i++)
        {
            Vec = Vuelta(Vec,12);
        }
        
        D[4] = Vec[0];
        D[3] = Vec[1];
        D[2] = Vec[2];
        
        R[2] = Vec[3]; 
        C[2] = Vec[4];
        L[2] = Vec[5];
        
        I[2] = Vec[6];
        I[3] = Vec[7];
        I[4] = Vec[8];
        
        L[6] = Vec[9];
        C[6] = Vec[10];
        R[6] = Vec[11];
        
    }
    
    
    private static void vueltaCara()
    {
        byte[] cara = new byte[8];
        int i;
        
        cara[0] = L[3];
        cara[1] = C[3];
        cara[2] = R[3];
        cara[3] = R[4];
        cara[4] = R[5];
        cara[5] = C[5];
        cara[6] = L[5];
        cara[7] = L[4];
        
        for(i=0; i<6; i++)
        {
            cara = Vuelta(cara,8);
        }
        
        L[3] = cara[0];
        C[3] = cara[1];
        R[3] = cara[2];
        R[4] = cara[3];
        R[5] = cara[4];
        C[5] = cara[5];
        L[5] = cara[6];
        L[4] = cara[7];
    }
    
    private static void vueltaCaraB()
    {
        byte[] cara = new byte[8];
        int i;
        
        cara[0] = L[9];
        cara[1] = C[9];
        cara[2] = R[9];
        cara[3] = R[10];
        cara[4] = R[11];
        cara[5] = C[11];
        cara[6] = L[11];
        cara[7] = L[10];
        
        for(i=0; i<6; i++)
        {
            cara = Vuelta(cara,8);
        }
        
        L[9] = cara[0];
        C[9] = cara[1];
        R[9] = cara[2];
        R[10] = cara[3];
        R[11] = cara[4];
        C[11] = cara[5];
        L[11] = cara[6];
        L[10] = cara[7];
    }
    
    private static void vueltaCaraD()
    {
        byte[] cara = new byte[8];
        int i;
        
        cara[0] = L[6];
        cara[1] = C[6];
        cara[2] = R[6];
        cara[3] = R[7];
        cara[4] = R[8];
        cara[5] = C[8];
        cara[6] = L[8];
        cara[7] = L[7];
        
        for(i=0; i<6; i++)
        {
            cara = Vuelta(cara,8);
        }
        
        L[6] = cara[0];
        C[6] = cara[1];
        R[6] = cara[2];
        R[7] = cara[3];
        R[8] = cara[4];
        C[8] = cara[5];
        L[8] = cara[6];
        L[7] = cara[7];
    }
    
    private static void vueltaCaraU()
    {
        byte[] cara = new byte[8];
        int i;
        
        cara[0] = L[0];
        cara[1] = C[0];
        cara[2] = R[0];
        cara[3] = R[1];
        cara[4] = R[2];
        cara[5] = C[2];
        cara[6] = L[2];
        cara[7] = L[1];
        
        for(i=0; i<6; i++)
        {
            cara = Vuelta(cara,8);
        }
        
        L[0] = cara[0];
        C[0] = cara[1];
        R[0] = cara[2];
        R[1] = cara[3];
        R[2] = cara[4];
        C[2] = cara[5];
        L[2] = cara[6];
        L[1] = cara[7];
    }

    private static void MovB()
    {
        
        byte[] Vec = new byte[12];
        
        Vec[0] = I[6];
        Vec[1] = I[7];
        Vec[2] = I[0];
        
        Vec[3] = L[0];
        Vec[4] = C[0];
        Vec[5] = R[0];
        
        Vec[6] = D[0];
        Vec[7] = D[7];
        Vec[8] = D[6];
        
        Vec[9] = R[8];
        Vec[10] = C[8];
        Vec[11] = L[8];
        
        int i;
        
        for(i=0; i<3; i++)
        {
            Vec = Vuelta(Vec,12);
        }
        
        I[6] = Vec[0];
        I[7] = Vec[1];
        I[0] = Vec[2];
        
        L[0] = Vec[3];
        C[0] = Vec[4];
        R[0] = Vec[5];
        
        D[0] = Vec[6];
        D[7] = Vec[7];
        D[6] = Vec[8];
        
        R[8] = Vec[9];
        C[8] = Vec[10];
        L[8] = Vec[11];
        
    }
    
    private static void InicializaVectores()
    {
        int i;
        
        for(i=0; i<12; i++ )
        {
            L[i]=0;
            C[i]=0;
            R[i]=0;
        }
        
        L[3] = 7;
        L[4] = 4;
        L[5] = 1;
        
        C[3] = 8;
        C[4] = 5;
        C[5] = 2;
        
        R[3] = 9;
        R[4] = 6;
        R[5] = 3;
        
        for(i=0; i<8; i++)
        {
            D[i] = (byte) 0;
            I[i] = (byte) 0;
        }
        
    }
    
    
}

