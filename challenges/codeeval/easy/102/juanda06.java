import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


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

            int sum = 0;

            Pattern p = Pattern.compile("\"id\": (\\d+), \"label\"");
            Matcher m = p.matcher(line);
            while (m.find()) {
                sum += Integer.parseInt(m.group(1));
            }

            System.out.println(sum);
        }
    }
}
