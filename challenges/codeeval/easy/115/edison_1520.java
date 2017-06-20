import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        try (BufferedReader buffer = new BufferedReader(new FileReader(file))) {
            String str;
            while ((str = buffer.readLine()) != null) {
                String[] cadena=str.split(",");
                String letra=""; String numero = "";
                for (int i=0; i<cadena.length;i++){
                    try{
                        Integer.parseInt(cadena[i]);
                        numero = numero+","+cadena[i];
                    }catch(Exception ex){
                        letra=letra+","+cadena[i];
                    }
                }
                letra=letra.replaceFirst(",", "");
                numero=numero.replaceFirst(",", "");
                if(letra.equals("") || numero.equals(""))
                    System.out.println(letra+numero);
                else
                System.out.println(letra+"|"+numero);
            }
        }
    }
}
