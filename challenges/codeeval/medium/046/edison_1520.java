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
            // Process line of input Here
            int k=0, i=0, j;
            boolean EsPrimo;
            EsPrimo=true;
            String str="";
            for(int numero=2;numero<Integer.parseInt(line);numero++)
            {
               
                for(j=2;j<numero;j++){
                    if(numero%j==0){
                        EsPrimo=false;
                        break;
                    }
                }
                if (EsPrimo==true){
                    i++;
                    str=str+","+numero;
                }   
                EsPrimo=true;
            }  
            System.out.println(str.replaceFirst(",", "")) ;
        }
        buffer.close();
    }
}
