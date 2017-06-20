import java.io.*;
import java.util.Arrays;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] l = line.split(" ");
            int[] n = new int[Integer.parseInt(l[0])];
            int[] r = new int[Integer.parseInt(l[0])-1];
            for(int i=1; i<l.length;i++){
                n[i-1]=Integer.parseInt(l[i]);
            }
            for(int i=0; i<n.length-1;i++){
                r[i]=Math.abs(n[i]-n[i+1]);
            }     
            Arrays.sort(r); 
            if(verificar(r))
                System.out.println("Jolly");
            else
                System.out.println("Not jolly");
            
        }
    }
    
    public static boolean verificar(int[] in){
        for(int i=0;i<in.length;i++){
            if(in[i]!=i+1)
                return false;
        }
        return true;
        
    }
}
