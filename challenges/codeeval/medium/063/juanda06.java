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

        LinkedList<rango> ranges = new LinkedList<rango>();
        int maxLar = 0;

        while ((line = in.readLine()) != null) {
            line = line.trim();

            if (line.length() == 0) {
                continue;
            }

            String[] array = line.split(",");
            int min = Integer.parseInt(array[0]);
            int max = Integer.parseInt(array[1]);
            ranges.add(new rango(min, max));

            if (max > maxLar) {
                maxLar = max;
            }
        }

        boolean[] Comp = compEsCompTab(maxLar+1);
        for (rango r : ranges) {
            int primCont = 0;
            for (int i = r.getMin(); i <= r.getMax(); i++) {
                if (!Comp[i]) {
                    primCont++;
                }
            }

            System.out.println(primCont);
        }

        in.close();
    }

    public static class rango
    {
        private final int _min;
        private final int _max;

        public rango(int min, int max)
        {
            _min = min;
            _max = max;
        }

        public int getMin()
        {
            return _min;
        }

        public int getMax()
        {
            return _max;
        }
    }

    public static boolean[] compEsCompTab(int max)
    {
        boolean[] Comp = new boolean[max];
        for (int i = 0; i < Comp.length; i++) {
            Comp[i] = false;
        }

        int cuPr = 2;
        while (true) {
            for (int i = cuPr; i * cuPr < max; i++) {
                Comp[i * cuPr] = true;
            }

            boolean more = false;
            for (int i = cuPr+1; i < max; i++) {
                if (!Comp[i]) {
                    cuPr = i;
                    more = true;
                    break;
                }
            }

            if (!more) {
                break;
            }
        }

        return Comp;
    }
}
