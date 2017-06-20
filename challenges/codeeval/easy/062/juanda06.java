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
            String[] lineArray = line.split(",");
            if (lineArray.length > 0) {
                int n = Integer.parseInt(lineArray[0]);
                int m = Integer.parseInt(lineArray[1]);

                System.out.println(nModM(n, m));
            }
        }
    }

    
    public static int nModM(int n, int m)
    {
        int current = n;

        while (Math.abs(current) >= Math.abs(m)) {
            current -= m;
        }

        return current;
    }
}
