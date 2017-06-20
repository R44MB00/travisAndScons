import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class Main{
    public static void main(String[] args) throws Throwable {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String str;
        while ((str = buffer.readLine()) != null){
            char lastChar = str.charAt(0);
            lastChar++;
            StringBuilder result = new StringBuilder();
            for (char theChar : str.toCharArray()) {
            if (theChar != lastChar) {
                lastChar = theChar;
                result.append(theChar);
            }
        }
        System.out.println(result.toString());
        }
    }
}
