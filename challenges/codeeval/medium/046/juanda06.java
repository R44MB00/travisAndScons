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

        LinkedList<Integer> maxi = new LinkedList<Integer>();
        int largestMax = 0;

        while ((line = in.readLine()) != null) {
            line = line.trim();

            if (line.length() == 0) {
                continue;
            }

            int max = Integer.parseInt(line);
            maxi.add(max);

            if (max > largestMax) {
                largestMax = max;
            }
        }

        boolean[] compos = comp(largestMax);
        for (int max : maxi) {
            boolean comma = false;
            for (int i = 2; i < max; i++) {
                if (!compos[i]) {
                    if (comma) {
                        System.out.print(",");
                    }

                    comma = true;
                    System.out.print(i);
                }
            }

            System.out.println();
        }

        in.close();
    }

    public static boolean[] comp(int max)
    {
        boolean[] compues = new boolean[max];
        for (int i = 0; i < compues.length; i++) {
            compues[i] = false;
        }

        int currentPrime = 2;
        while (true) {
            for (int i = currentPrime; i * currentPrime < max; i++) {
                compues[i * currentPrime] = true;
            }

            boolean more = false;
            for (int i = currentPrime+1; i < max; i++) {
                if (!compues[i]) {
                    currentPrime = i;
                    more = true;
                    break;
                }
            }

            if (!more) {
                break;
            }
        }

        return compues;
    }
}
