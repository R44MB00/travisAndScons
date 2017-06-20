import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            for (int i=0;i < line.length();i++ ) {

                if (i == line.length()-1) {
                    System.out.print(line.charAt(line.length()-1));
                    break;
                }

                if (line.charAt(i) != line.charAt(i+1)) {
                    System.out.print(line.charAt(i));
                }
            }
            System.out.println("");
        }
    }
}
