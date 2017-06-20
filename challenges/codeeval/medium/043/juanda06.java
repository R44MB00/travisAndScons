import java.io.*;
import java.util.Arrays;

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

            String[] stringArray = line.split(" ");

            if (stringArray.length == 1) {
                System.out.println("Jolly");
                continue;
            }

            int[] jolly = new int[stringArray.length-1];

            for (int i = 0; i < stringArray.length-1; i++) {
                jolly[i] = Math.abs(
                        Integer.parseInt(stringArray[i]) -
                        Integer.parseInt(stringArray[i+1]));
            }

            if (jolly.length == 1) {
                if (jolly[0] == 1) {
                    System.out.println("Jolly");
                } else {
                    System.out.println("Not jolly");
                }

                continue;
            }

            Arrays.sort(jolly);
            boolean isJolly = true;

            for (int i = 0; i < jolly.length-1; i++) {
                if (jolly[i] != i+1) {
                    isJolly = false;
                    break;
                }
            }

            if (isJolly) {
                System.out.println("Jolly");
            } else {
                System.out.println("Not jolly");
            }
        }

        in.close();
    }
}
