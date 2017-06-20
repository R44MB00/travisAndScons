import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            System.out.println(swapCase(line));
        }
    }
    public static String swapCase(String givenString) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < givenString.length(); i++) {
            if (Character.isUpperCase(givenString.charAt(i))) {
                sb.append(Character.toLowerCase(givenString.charAt(i)));
            } else {
                sb.append(Character.toUpperCase(givenString.charAt(i)));                
            }

        }          
        return sb.toString();
    }  
}
