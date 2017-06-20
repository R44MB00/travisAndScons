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
            String[] lineArray = line.trim().split(",");

            int x = Integer.parseInt(lineArray[0]);
            int n = Integer.parseInt(lineArray[1]);

            System.out.println(sigMultX(x, n));
        }
    }

    public static int sigMultX(int x, int n)
    {
        int multip = 1;

        while (true) {
            int multiplo = n * multip;

            if (multiplo > x) {
                return multiplo;
            }

            multip++;
        }
    }
}
