import java.io.*;
public class Stack {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] list = line.split(" ");
            for (int i = list.length-1; i >= 0; i--) {
                if (i == list.length-1 || i % 2 != 0) {
                    System.out.print(list[i]+" ");
                }
            }
            System.out.println("");
        }
    }
}
