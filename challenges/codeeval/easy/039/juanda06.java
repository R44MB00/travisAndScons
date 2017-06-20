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
            int n = Integer.parseInt(line);

            boolean numFeliz = feliz(n);

            if (numFeliz) {
                System.out.println(1);
            } else {
                System.out.println(0);
            }
        }
    }

    public static boolean feliz(int n)
    {
        Set<Integer> vis = new HashSet<Integer>();

        while (!vis.contains(n)) {
            vis.add(n);
            n = sumCuadrados(n);

            if (n == 1) {
                return true;
            }
        }

        return false;
    }

    public static int sumCuadrados(int n)
    {
        int sum = 0;

        while (n > 0) {
            int ultDigi = n % 10;
            sum += ultDigi*ultDigi;
            n /= 10;
        }

        return sum;
    }
}
