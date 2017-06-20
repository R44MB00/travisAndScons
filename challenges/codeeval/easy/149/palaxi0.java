import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String stringe = line;
            String [] stringe_1 = stringe.split(" ");
            String flags = "";
            String nums = "";
            String total = "";
            for (int i = 0; i < stringe_1.length; i+=2) {
                flags+=stringe_1[i] + " ";   
            }
            String [] flagsar = flags.split(" ");
            for (int i = 1; i < stringe_1.length; i+=2) {
                nums+=stringe_1[i] + " ";   
            }        
            String [] numsar = nums.split(" ");
            for (int i = 0; i < flagsar.length; i++) {
                if ("00".equals(flagsar[i])){
                    int cuant = numsar[i].length();
                    total += new String(new char [cuant]).replace("\0","1");
                }else if("0".equals(flagsar[i])){
                    int cuant = numsar[i].length();
                    total += new String(new char [cuant]).replace("\0","0");
                }
            }
            System.out.println(Long.parseLong(total,2));
        }
    }
}
