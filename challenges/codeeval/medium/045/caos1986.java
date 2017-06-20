import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            int cont=0;
            while(!palindrom(Integer.parseInt(line)+Integer.parseInt(reverse(line)))){
                cont++;
                line=Integer.toString(Integer.parseInt(line)+Integer.parseInt(reverse(line)));
            }
            cont++;
            System.out.println(cont+" "+Integer.toString(Integer.parseInt(line)+Integer.parseInt(reverse(line))));
        }
    }
    
    public static String reverse(String x){
        String out="";
        for(int i=x.length();i>0;i--){
            out+=x.charAt(i-1);
        }
        return out;       
    }
    
    public static boolean palindrom(int x){
        if(Integer.toString(x).equals(reverse(Integer.toString(x))))
            return true;
        return false;
    }
}
