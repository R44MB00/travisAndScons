import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main
{
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String str;
        while ((str = buffer.readLine()) != null){
            str = str.trim();
            if (str.length() == 0) {
                continue;
            }
            String[] Array = str.split(";");
            int n = Integer.parseInt(Array[0].trim());
            Array = Array[1].trim().split(",");
            int sum = 0;
            for (String s : Array) {
                sum += Integer.parseInt(s);
            }
            int d = (n-1)*(n-2)/2;
            System.out.println(sum - d);
        }
    }
}
