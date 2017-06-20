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
            int unos = contBits(n);

            System.out.println(unos);
        }

        in.close();
    }

    public static int contBits(int n)
    {
        int cont = 0;

        while (n != 0) {
            int ultBit = n & 0x1;

            if (ultBit != 0) {
                cont++;
            }

            n >>= 1;
        }

        return cont;
    }
}
