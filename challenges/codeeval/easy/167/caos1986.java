import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            if(line.length()<=55)
				System.out.println(line);
			else{
				String tmp=line.substring(0,39).trim();
				if(tmp.lastIndexOf(" ")!=-1)
					tmp=tmp.substring(0,tmp.lastIndexOf(" "));
				System.out.println(tmp.trim()+"... <Read More>");
			}
        }
    }
}
