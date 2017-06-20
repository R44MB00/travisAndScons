import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] l =line.split(" ");
			String r="";
			for(int i = 0; i<l[0].length();i++){
				if(l[1].charAt(i)=='1'){
					r+=Character.toUpperCase(l[0].charAt(i));
				}else{
					r+=l[0].charAt(i);
				}
			}
			System.out.println(r);
        }
    }
} 
