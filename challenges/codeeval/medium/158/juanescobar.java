import java.io.*;
public class Main {

    public static int no_point = 0;

    public static boolean check(String row) {
        String[] rowx = row.split("");
        for (int i=0;i < rowx.length-1;i++ ) {
            if (rowx[i].equals("X") && rowx[i+1].equals("Y")) {
                return true;
            }
        }
        return false;
    }

    public static String burbuja(String row) {
        String[] rowx = row.split("");
        for (int i =0;i < rowx.length-1;i++ ) {
            if (rowx[i].equals(".") && rowx[i+1].equals("Y")) {
                rowx[i] = "Y";
                rowx[i+1] = ".";
                break;
            }
        }
        String output = "";
        for (int i=0;i < rowx.length;i++ ) {
            output += rowx[i];
        }

        if (output.equals(row)) {no_point = 1;}
        return output;
    }

    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] rows = line.split(",");

            int counter = 0;
            int sale = 0;

            do {
                for (int i=0; i < rows.length; i++) {
                    
                    rows[i] = burbuja(rows[i]);
                    if (check(rows[i]) == true) {
                        sale = 1;
                    }
                }

                counter++;
            } while (sale != 1);

            if (no_point == 1) {
                System.out.println("0");
            } else {
                System.out.println(counter);
            }
            

        }
    }
}
