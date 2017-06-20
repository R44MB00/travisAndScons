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
            String[] lineArray = line.split(";");

            for (String palabra : lineArray) {
                if (palabra.equals("zero")) {
                    System.out.print(0);
                } else if (palabra.equals("one")) {
                    System.out.print(1);
                } else if (palabra.equals("two")) {
                    System.out.print(2);
                } else if (palabra.equals("three")) {
                    System.out.print(3);
                } else if (palabra.equals("four")) {
                    System.out.print(4);
                } else if (palabra.equals("five")) {
                    System.out.print(5);
                } else if (palabra.equals("six")) {
                    System.out.print(6);
                } else if (palabra.equals("seven")) {
                    System.out.print(7);
                } else if (palabra.equals("eight")) {
                    System.out.print(8);
                } else if (palabra.equals("nine")) {
                    System.out.print(9);
                }
            }

            System.out.println();
        }
    }
}
