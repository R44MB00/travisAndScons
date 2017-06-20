package solution;

import java.util.ArrayList;
import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int cases = read.nextInt();
        String cadena = read.nextLine();
        for (int i = 0; i < cases; i++)
        {
            cadena = read.nextLine();
            cadena = borrar_caracter(cadena);
            ArrayList<Character> par = new ArrayList<Character>();
            int res=0;
            for (int j=0; j<cadena.length(); j++)
            {
                if (cadena.charAt(j)=='(')                
                    par.add(')');                
                else if (cadena.charAt(j)=='[')
                    par.add(']');
                else if (cadena.charAt(j)=='{')
                    par.add('}');
                else if (cadena.charAt(j)=='<')
                    par.add('>');
                else if ((cadena.charAt(j) ==  ')') || (cadena.charAt(j) == ']') ||
                         (cadena.charAt(j) == '}') || (cadena.charAt(j) == '>'))
                {  
                    if (par.isEmpty()!=true)
                        if (par.get(par.size()-1)==cadena.charAt(j))
                        {
                            res = 1;
                            par.remove(par.size()-1);
                        }
                        else
                        {
                            res = 0;
                            break;
                        }
                    else
                    {
                        res = 0;
                        break;
                    }                    
                }
            }
            if (par.isEmpty()!=true)
                res = 0;
            System.out.print(res +" ");
        }
    } 
    
    public static String borrar_caracter(String cadena)
    {
        String resultado = "";
        for (int i=0; i<cadena.length();i++)
        {
            if ((cadena.charAt(i) ==  '(') || (cadena.charAt(i) == ')') ||
               (cadena.charAt(i) == '[') || (cadena.charAt(i) == ']') ||
               (cadena.charAt(i) == '{') || (cadena.charAt(i) == '}') ||
               (cadena.charAt(i) == '<') || (cadena.charAt(i) == '>'))        
            {
                resultado += cadena.charAt(i);                
            }
        }
        return resultado;
    }
}
