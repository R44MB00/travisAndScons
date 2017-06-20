
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String stringe = line;
            double ups = 0;
            double lows = 0;
            double total = 0;
            String temp;
            String templow;
            String tempUp;
            for (int i = 0; i < stringe.length();i++){
                    temp = ""+stringe.charAt(i);
                    templow = temp.toLowerCase();
                    tempUp = temp.toUpperCase();
                 
                    if (temp.equals(templow)){
                        lows++;
                        total++;
                    }else if(temp.equals(tempUp)){
                        ups++;
                        total++;           
                    }
                                    
                }
            System.out.print("lowercase: ");            
            System.out.printf("%.2f",lows/total*100);
            System.out.print(" ");
            System.out.print("uppercase: ");
            System.out.printf("%.2f",ups/total*100);
            System.out.println();
                
        }
    }
}