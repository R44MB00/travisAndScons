import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] l=line.split(",");
            int max=Integer.parseInt(l[0]);
            int pos=0;
            while(pos < l.length){
                int suma=0;
                for(int i=pos;i<l.length;i++){
                    suma+=Integer.parseInt(l[i]);
                    if(suma>max){
                        max=suma;
                    }
                }
                pos++;
            }
            System.out.println(max);
        }
    }
}
