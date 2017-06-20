
import java.io.*;

import javax.script.ScriptException;

public class Main {

    public static boolean isNumeric(String s) {
        return s.matches("[-+]?\\d*\\.?\\d+");
    }

    public static int[][] genMatriz(int[][] matriz) {

        matriz = new int[256][256];
        for (int i = 0; i < 256; i++) {
            for (int j = 0; j < 256; j++) {
                matriz[i][j] = 0;
            }
        }
        return matriz;
    }

    public static int[][] changeCol(int matriz[][], int pos, int value) {
        for (int i = 0; i < matriz.length; i++) {
            matriz[i][pos] = value;
        }
        return matriz;
    }

    public static int[][] changeRow(int matriz[][], int pos, int value) {
        for (int i = 0; i < matriz.length; i++) {
            matriz[pos][i] = value;
        }
        return matriz;
    }

    public static int queryCol(int matriz[][], int pos) {
        int suma = 0;
        for (int i = 0; i < matriz.length; i++) {
            suma = suma + matriz[i][pos];
        }
        return suma;
    }

    public static int queryRow(int matriz[][], int pos) {
        int suma = 0;
        for (int i = 0; i < matriz.length; i++) {
            suma = suma + matriz[pos][i];
        }
        return suma;
    }

    public static void main(String[] args) throws IOException {
        //File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader("C:\\Users\\smunoz\\Desktop\\CodeEval\\test.txt"));
        String line;
        String[] array;
        int pos, value;
        int[][] matriz = null;
        matriz = genMatriz(matriz);
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            array = line.split(" ");

            if (array[0].equals("SetCol")) {
                pos = Integer.parseInt(array[1]);
                value = Integer.parseInt(array[2]);
                matriz = changeCol(matriz, pos, value);

            }

            if (array[0].equals("SetRow")) {
                pos = Integer.parseInt(array[1]);
                value = Integer.parseInt(array[2]);
                matriz = changeRow(matriz, pos, value);
            }

            if (array[0].equals("QueryCol")) {
                pos = Integer.parseInt(line.split(" ")[1]);
                System.out.println(queryCol(matriz, pos));
            }
            if (array[0].equals("QueryRow")) {
                pos = Integer.parseInt(line.split(" ")[1]);
                System.out.println(queryRow(matriz, pos));
            }
            
        
        }
    }
}
