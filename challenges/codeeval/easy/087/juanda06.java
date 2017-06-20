import java.io.*;

public class Main
{
    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        Matriz m = new Matriz();

        while ((line = in.readLine()) != null) {
            line = line.trim();
            String[] lineArray = line.split(" ");

            String command = lineArray[0];

            if (command.equals("SetCol")) {
                int col = Integer.parseInt(lineArray[1]);
                int value = Integer.parseInt(lineArray[2]);
                m.setCol(col, value);
            } else if (command.equals("SetRow")) {
                int row = Integer.parseInt(lineArray[1]);
                int value = Integer.parseInt(lineArray[2]);
                m.setRow(row, value);
            } else if (command.equals("QueryCol")) {
                int col = Integer.parseInt(lineArray[1]);
                System.out.println(m.queryCol(col));
            } else if (command.equals("QueryRow")) {
                int row = Integer.parseInt(lineArray[1]);
                System.out.println(m.queryRow(row));
            }
        }

        in.close();
    }

    public static class Matriz
    {
        private static final int _size = 256;

        int[][] _matriz = new int[_size][_size];

        public void setRow(int row, int value)
        {
            for (int i = 0; i < _size; i++) {
                _matriz[row][i] = value;
            }
        }
        public int queryRow(int row)
        {
            int result = 0;
            for (int i = 0; i < _size; i++) {
                result += _matriz[row][i];
            }
            return result;
        }
        public void setCol(int col, int value)
        {
            for (int i = 0; i < _size; i++) {
                _matriz[i][col] = value;
            }
        }
        public int queryCol(int col)
        {
            int result = 0;
            for (int i = 0; i < _size; i++) {
                result += _matriz[i][col];
            }
            return result;
        }
    }
}
