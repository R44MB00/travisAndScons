
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String stringe= line;
            String hexas  = stringe.split("\\ \\|\\ ")[0];
            String bins  = stringe.split("\\ \\|\\ ")[1];
            String [] binsa = bins.split(" ");
            String []hexasa = hexas.split(" ");
            int sumahexa=0;
            int sumabins= 0;
            for (String hexasa1 : hexasa) {
                sumahexa += Integer.parseInt(hexasa1,16);
            }
            for (String binsa1 : binsa) {
                sumabins+= Integer.parseInt(binsa1, 0b10);
            }
            if(sumabins>= sumahexa){
                System.out.println("True");
            }
            else{
                System.out.println("False");
            }
        }
    }
}
