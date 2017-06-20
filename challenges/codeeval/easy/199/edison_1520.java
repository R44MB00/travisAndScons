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
                String palabra=cadena[0];
                String binario=cadena[1];
                String masked="";
                for (int i=0; i<palabra.length();i++){
                    int b=Integer.parseInt(binario.charAt(i)+"");
                    if (b==1){
                        masked = masked+(palabra.charAt(i)+"").toUpperCase();
                    }else{
                        masked =masked+palabra.charAt(i);
                    }
                }System.out.println(masked);
            }
        }
    }
}
