
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String str;
            while ((str = buffer.readLine()) != null) 
        {
            if (str.equals("")){continue;}
            else{
                str=str.trim();
                if (str.length()<=55)
                {
                    System.out.println(str);
                }else{
                    if ((str.charAt(38)+"").equals(" ")){
                        System.out.println(str.substring(0, 38).trim()+"... <Read More>");                        
                    }else{
                        System.out.println(str.substring(0, 37).trim()+"... <Read More>");
                    }

                }
            }
        }
    }
}
