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
                String[] cadena=str.split(" ");
                String mayor="";
                for(int i=0;i<cadena.length;i++){
                    if(cadena[i].length() > mayor.length()){
                        mayor=cadena[i];
                    }
                } System.out.println(mayor);
            }
        }
    }
}
