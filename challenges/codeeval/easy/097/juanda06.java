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
            line = line.trim();

            if (line.length() == 0) {
                continue;
            }

            String[] lineArray = line.split("\\|");

            String cifrado = lineArray[0];
            String llave = lineArray[1].trim();

            StringBuilder sb = new StringBuilder();

            for (String s : llave.split(" ")) {
                int i = Integer.parseInt(s);
                sb.append(cifrado.charAt(i-1));
            }

            System.out.println(sb.toString());
        }
    }

}
