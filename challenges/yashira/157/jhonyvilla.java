package trithem;

public class Trithem 
{
    public static void main(String[] args) 
    {
        String texto = "OUTR VJZV NJMTX RZ EQJKPIMZ BQ IUMKR";
        texto = borrar_espacio(texto);
        String [][] matriz = new String [texto.length()][26];
        llenar_matriz(matriz , texto.length());
        String decrypt = "";
        for (int i=0; i<texto.length(); i++)
        {
            int j = 0;
            while (!matriz[i][j].equals(String.valueOf(texto.charAt(i))))
                j++;
            decrypt = decrypt + matriz[0][j];                        
        }
        System.out.println(decrypt);        
    }
    
    public static void llenar_matriz(String matriz[][], int x)
    {
        matriz [0][0]="A"; matriz [0][1]="B";
        matriz [0][2]="C"; matriz [0][3]="D";
        matriz [0][4]="E"; matriz [0][5]="F";
        matriz [0][6]="G"; matriz [0][7]="H";
        matriz [0][8]="I"; matriz [0][9]="J";
        matriz [0][10]="K"; matriz [0][11]="L";
        matriz [0][12]="M"; matriz [0][13]="N";
        matriz [0][14]="O"; matriz [0][15]="P";
        matriz [0][16]="Q"; matriz [0][17]="R";
        matriz [0][18]="S"; matriz [0][19]="T";
        matriz [0][20]="U"; matriz [0][21]="V";
        matriz [0][22]="W"; matriz [0][23]="X";
        matriz [0][24]="Y"; matriz [0][25]="Z";  
        for (int i=1; i<x; i++)
            for (int j=0; j<26; j++)
            {
                if (j < 25)
                {
                    matriz[i][j] = matriz[i-1][j+1];
                }
                else
                    matriz[i][j] = matriz[i-1][0];
            }
    }
    
    public static String borrar_espacio(String cadena)
    {
        String resultado = "";
        for (int i=0; i<cadena.length();i++)
        {
            if ((cadena.charAt(i) != ' ')) 
            {
                resultado += cadena.charAt(i);                
            }
        }
        return resultado;
    }
}