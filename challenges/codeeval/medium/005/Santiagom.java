import java.io.*;
import java.util.*;

public class Main
{

    private static class InfoCycle
    {
        private final int _start;
        private final int _len;

        public InfoCycle(int pStart, int cLen)
        {
            _start = pStart;
            _len = cLen;
        }

        public int pStart()
        {
            return _start;
        }

        public int cLen()
        {
            return _len;
        }
    }

    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader bf = new BufferedReader(new FileReader(file));
        String line;

        while ((line = bf.readLine()) != null) {
            line = line.trim();

            String[] array = line.split(" ");
            int[] seq = new int[array.length];

            for (int i = 0; i < seq.length; i++) {
                seq[i] = Integer.parseInt(array[i]);
            }

            InfoCycle ci = firstCycleDetec(seq);

            for (int i = 0; i < ci.cLen(); i++) {
                System.out.print(seq[ci.pStart() + i]);

                if (i != ci.cLen() - 1) {
                    System.out.print(" ");
                }
            }

            System.out.println();
        }

        bf.close();
    }

    public static InfoCycle firstCycleDetec(int[] seq)
    {
        for (int starting = 0; starting < seq.length-1; starting++) {
            for (int length = 1; length < seq.length; length++) {
                if (cycleValidation(seq, starting, length)) {
                    return new InfoCycle(starting, length);
                }
            }
        }

        return new InfoCycle(0, seq.length);
    }

    private static boolean cycleValidation(int[] seq, int start, int length)
    {
        int current = start + length;
        boolean foundMatch = false;

        while (current < seq.length) {
            if (!subMatch(seq, start, current, length)) {
                return false;
            }

            foundMatch = true;
            current += length;
        }

        return foundMatch;
    }

    private static boolean subMatch(int[] seq, int sA, int sB,
                                          int length)
    {
        for (int i = 0; i < length; i++) {
            int indexA = sA + i;
            int indexB = sB + i;

            if (indexA >= seq.length || indexB >= seq.length) {
                return false;
            }

            if (seq[indexA] != seq[indexB]) {
                return false;
            }
        }

        return true;
    }


}
