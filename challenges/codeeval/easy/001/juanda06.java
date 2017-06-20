import java.io.IOException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class Main
{
    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        while ((line = in.readLine()) != null) {
            String[] lineArray = line.split(" ");
            if (lineArray.length > 0) {
                int a = Integer.parseInt(lineArray[0]);
                int b = Integer.parseInt(lineArray[1]);
                int n = Integer.parseInt(lineArray[2]);

                doFizzBuzz(a, b, n);
                System.out.println();
            }
        }
    }

    public static void doFizzBuzz(int a, int b, int n)
    {
        for (int i = 1; i <= n; i++) {

            boolean divisiblePor = inDivisiblePorX(i, a);
            boolean isDivisibleByB = inDivisiblePorX(i, b);

            if (divisiblePor && isDivisibleByB) {
                System.out.print("FB");
            } else if (divisiblePor) {
                System.out.print("F");
            } else if (isDivisibleByB) {
                System.out.print("B");
            } else {
                System.out.print(i);
            }

            if (i < n) {
                System.out.print(" ");
            }
        }
    }

    public static boolean inDivisiblePorX(int n, int x)
    {
        return n % x == 0;
    }
}
