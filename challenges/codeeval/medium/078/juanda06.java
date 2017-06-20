import java.io.*;
import java.util.*;

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

            int[][] board = parsetablaLine(line);
            tabla sudoku = new tabla(board);

            if (sudoku.bien()) {
                System.out.println("True");
            } else {
                System.out.println("False");
            }
        }

        in.close();
    }

    private static int[][] parsetablaLine(String line)
    {
        int width = Integer.parseInt(line.split(";")[0]);
        int[][] result = new int[width][width];

        int counter = 0;
        for (String s : line.split(";")[1].split(",")) {
            result[counter/width][counter%width] = Integer.parseInt(s);
            counter++;
        }

        return result;
    }

    public static class tabla
    {
        private final int[][] _board;
        private final int _width;
        private final int _sqrt;
        private final int _desiredSum;

        public tabla(int[][] board)
        {
            _board = board;
            _width = board.length;
            _sqrt = (int) Math.sqrt(_width);
            _desiredSum = _width * (_width + 1) / 2;

            if (!cuadradoPerfe(_width)) {
                throw new IllegalArgumentException();
            }
        }

        private static boolean cuadradoPerfe(int n)
        {
            return ((int) (Math.sqrt(n) + 0.5) * (int) (Math.sqrt(n) + 0.5)) == n;
        }

        private int getWidth()
        {
            return _width;
        }

        private int getSqrt()
        {
            return _sqrt;
        }

        private int getDesiredSum()
        {
            return _desiredSum;
        }

        private int[][] getBoard()
        {
            return _board;
        }

        public boolean bien()
        {
	            for (int i = 0; i < getWidth(); i++) {
                int sum1 = 0;
                int sum2 = 0;

                for (int j = 0; j < getWidth(); j++) {
                    sum1 += getBoard()[i][j];
                    sum2 += getBoard()[j][i];
                }

                if (sum1 != getDesiredSum() || sum2 != getDesiredSum()) {
                    return false;
                }
            }

            for (int i = 0; i < getSqrt(); i++) {
                for (int j = 0; j < getSqrt(); j++) {
                    int sum = 0;

                    for (int m = 0; m < getSqrt(); m++) {
                        for (int n = 0; n < getSqrt(); n++) {
                            sum += getBoard()[i*getSqrt() + m][j*getSqrt() + n];
                        }
                    }

                    if (sum != getDesiredSum()) {
                        return false;
                    }
                }
            }

            return true;
        }
    }
}
