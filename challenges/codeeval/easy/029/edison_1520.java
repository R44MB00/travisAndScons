import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String str;
            while ((str = buffer.readLine()) != null) 
        {
            if (str.equals("")){continue;}
            else{
            String[] cadena=str.split(",");
            Set<String> uniqueStr = new HashSet<>(Arrays.asList(cadena));
            String[] buf = new String[0];
            String[] valor= uniqueStr.toArray(buf);
            int[] numeros = new int[valor.length];
            for(int i=0;i<valor.length;i++){
                numeros[i]=Integer.parseInt(valor[i]);
            }
            Arrays.sort(numeros);
            String unique="";
            for (int i=0;i<numeros.length;i++){
                unique=unique+","+numeros[i];
            }
            unique=unique.replaceFirst(",", "");
            System.out.println(unique);
            }
        }
    }
}
