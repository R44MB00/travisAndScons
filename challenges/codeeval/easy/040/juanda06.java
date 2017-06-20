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
            int n = Integer.parseInt(line);

            if (siDescribe(n)) {
                System.out.println(1);
            } else {
                System.out.println(0);
            }
        }
    }
   
    public static boolean siDescribe(int n)
    {
        char[] nArray = Integer.toString(n).toCharArray();

        int[] cont = new int[10];
        for (char c : nArray) {
            int dig = c-48;
            cont[dig]++;
        }

        for (int i = 0; i < nArray.length; i++) {
            if (cont[i] != (nArray[i]-48)) {
                return false;
            }
        }

        return true;
    }
}
   
   
