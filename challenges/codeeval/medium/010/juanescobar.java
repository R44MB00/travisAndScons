import java.io.*;
public class MthToLastElement {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] list = line.split(" ");
            Integer index = Character.getNumericValue(line.charAt(line.length() - 1)) + 1;
            index = list.length-index;
            if (index < list.length-2) {
                System.out.println(list[index]);
            }
        }
    }
}
