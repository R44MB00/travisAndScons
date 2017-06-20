import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] ary = line.split("");
            String scripts="";
            for(int a=0; a<ary.length-1; a++){
                int value_Decimal= line.codePointAt(a);
                //System.out.println(value_Decimal);
                if(value_Decimal>=65 && value_Decimal<=90){
                    char digit = (char) value_Decimal;
                    digit =Character.toLowerCase(digit);
                    scripts= scripts+digit;
                    
                }
                else if(value_Decimal>=97 && value_Decimal<=122){
                    char digit = (char) value_Decimal;
                    digit =Character.toUpperCase(digit);
                    scripts =scripts+digit;
                    
                
                }
                else{
                    scripts = scripts + ary[a+1];
                }
                
                
            }
            System.out.println(scripts);
        }
    }
}
