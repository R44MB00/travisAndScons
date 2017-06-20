import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            // Process line of input Here
            String dos[] = line.split(",");
            String pal = dos[0];
            String buscar = dos[1];
            for(int i = 0; i < buscar.length(); i++){
                char busq = buscar.charAt(i);
                boolean esta = false;
                int j = 0;
                while(j < pal.length()){
                    char letr = pal.charAt(j);
                    if(busq == letr){
                        esta = true;
                        break;
                    }else{
                        j++;
                    }
                }
                if(esta == true){
                    System.out.println("true");
                    break;
                }else{
                    System.out.println("false");
                }
            }
        }
    }
}
