import java.io.IOException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class Main
{
    private enum Operation
    {
        SUM,
        RES
    }

    private static int ant;
    private static int sig;
    private static Operation op;

    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        while ((line = in.readLine()) != null) {
            String number = line.split(" ")[0];
            String expression = line.split(" ")[1];

            ant = 0;
            sig = 0;
            op = Operation.SUM;

            for (char c : expression.toCharArray()) {
                if (c == '+') {
                    evaluate();
                    op = Operation.SUM;
                } else if (c == '-') {
                    evaluate();
                    op = Operation.RES;
                } else {
                    sig *= 10;
                    sig += Character.getNumericValue(number.charAt(c - 'a'));
                }
            }

            evaluate();
            System.out.println(ant);
        }
    }

    private static void evaluate()
    {
        switch (op) {
            case SUM:
                ant += sig;
                break;
            case RES:
                ant -= sig;
                break;
        }

        sig = 0;
    }
}
