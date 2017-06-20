
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            if (line!=""){
            String [] lista = line.trim().split(" ");
                if(lista.length !=0){
                    for (int i = lista.length-1; i >= 0; i--) {
                        System.out.print(lista[i]);
                        if(i==0){
                            System.out.println();
                        }else{
                            System.out.print(" ");
                            
                        }
                        
                    }
                }
            }
        }
    }
}
