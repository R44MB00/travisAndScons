import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int array[]= new int[300];
        for (int i=0; i<300; i++)
        {
            array[i] = read.nextInt();
        }
        int may = array[0];
        int men = array[0];
        for (int i=0; i<300; i++)
        {
            if (may < array[i])
                may = array[i];
            if (men > array[i])
                men = array[i];
        }
        System.out.print(may + " "+ men);
    }
}