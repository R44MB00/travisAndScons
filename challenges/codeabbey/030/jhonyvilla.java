import java.util.Scanner;
public class Solution
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);
        String text = read.nextLine();
        String invertido = ""; 
        for (int i=text.length()-1; i>=0; i--)
        {
            invertido = invertido + text.charAt(i);
        }
        System.out.print(invertido);
    }
}