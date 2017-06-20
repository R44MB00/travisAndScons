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
            String[] values = line.split(",");
            if (values.length > 0) {
                int n = Integer.parseInt(values[0]);
                int m = Integer.parseInt(values[1]);
                System.out.println(restTheOther(n, m));
            }
        }
    }

 
    public static int restTheOther(int n, int m){
             int sum = n;

             while (sum >=m) {
                  sum -= m;
            }

        return sum;
    }
}
