
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class Main
{
    public static void main(String[] args) throws Exception
    {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null){
            line = line.trim();
            char[] caracteres = line.toCharArray();
            caracteres[0] = Character.toUpperCase(caracteres[0]);
            for (int i = 0; i < line.length()- 2; i++){
                if (caracteres[i] == ' ' || caracteres[i] == '.' || caracteres[i] == ',')
                caracteres[i + 1] = Character.toUpperCase(caracteres[i + 1]);
            }
            System.out.println(caracteres);
        }
    }
}
