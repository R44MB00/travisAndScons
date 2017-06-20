import java.io.*;
import java.util.*;

public class Main
{
    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        while ((line = in.readLine()) != null) {
            line = line.trim();

            if (line.length() == 0) {
                continue;
            }

            int n = Integer.parseInt(line);
            int iterations = 0;
            while (true) {
                if (isPalindrome(n)) {
                    System.out.println(iterations + " " + n);
                    break;
                }

                iterations++;
                n = n + reverseDigits(n);
            }
        }

        in.close();
    }

    public static int reverseDigits(int n)
    {
        char[] array = Integer.toString(n).toCharArray();

        for (int i = 0; i < array.length/2; i++) {
            char tmp = array[i];
            array[i] = array[array.length -1 -i];
            array[array.length -1 - i] = tmp;
        }

        return Integer.parseInt(new String(array));
    }

    public static boolean isPalindrome(int n)
    {
        char[] array = Integer.toString(n).toCharArray();

        for (int i = 0; i < array.length/2; i++) {
            if (array[i] != array[array.length-i-1]) {
                return false;
            }
        }

        return true;
    }
}
