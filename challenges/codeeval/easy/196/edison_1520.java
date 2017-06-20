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
                String resultado = "";
                for(int i=0;i<cadena.length;i++){
                    String texto= (cadena[i]);
                    char a = texto.charAt(0);
                    char b = texto.charAt(texto.length()-1);
                    resultado=resultado+" "+b+texto.substring(1, texto.length()-1)+a;
                } System.out.println(resultado.trim());
            }
        }
    }
}
