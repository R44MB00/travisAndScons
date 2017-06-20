import java.io.*;

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

            if (esAN(Integer.parseInt(line))) {
                System.out.println("True");
            } else {
                System.out.println("False");
            }
        }
    }

    public static boolean esAN(int n)
    {
        int digits = digitCount(n);

        int sum = 0;
        int a = n;

        while (a > 0) {
            int digit = a % 10;
            int multipliedDigit = digit;

            for (int i = 1; i < digits; i++) {
                multipliedDigit *= digit;
            }

            sum += multipliedDigit;
            a /= 10;
        }

        return sum == n;
    }

    public static int digitCount(int n)
    {
        int cont = 0;

        while (n > 0) {
            cont++;
            n /= 10;
        }

        return cont;
    }
}
