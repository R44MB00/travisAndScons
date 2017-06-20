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
            String larga = null;
            line = line.trim();

            for (String word : line.split(" ")) {
                if (larga == null) {
                    larga = word;
                } else if (word.length() > larga.length()) {
                    larga = word;
                }
            }

            System.out.println(larga);
        }
    }
}
