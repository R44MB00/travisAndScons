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
            int remaining = Integer.parseInt(line.trim());

            int cincos = remaining / 5;
            remaining -= cincos * 5;
            
                 int tres = remaining / 3;
            remaining -= tres * 3;

            int unos = remaining;

            System.out.println(cincos + tres + unos);
        }
    }
}
