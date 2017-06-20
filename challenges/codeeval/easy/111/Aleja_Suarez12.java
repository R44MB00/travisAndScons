import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
       
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
             String longn=null;
            
            for (String i: line.split(" ")) {
                if(longn==null){
                    longn=i;
                }else if (i.length()>longn.length()){
                    longn=i;
                }
            }
            System.out.println(longn);
        }
    }
}
