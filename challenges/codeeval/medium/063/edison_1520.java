import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String str[] = line.split(",");
            // Process line of input Here
            int k=0, i=0, j;
            boolean EsPrimo;
            EsPrimo=true;
            for(int numero=Integer.parseInt(str[0]);numero<=(Integer.parseInt(str[1]));numero++)
            {
                for(j=2;j<numero;j++){
                    if(numero%j==0){
                        EsPrimo=false;
                        break;
                    }
                }
                if (EsPrimo==true){
                i++;
                }   
                EsPrimo=true;
            }
             System.out.println(i) ; 
        }
        buffer.close();
    }
}
