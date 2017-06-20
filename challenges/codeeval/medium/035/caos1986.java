import java.io.*;
import java.util.regex.*;

public class Main {
    public static void main (String[] args) throws IOException {
        Matcher matcher;
        Pattern pattern = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            matcher = pattern.matcher(line);
            if(matcher.matches())
                System.out.println("True");
            else
                System.out.println("False");
        }
    }   
}
