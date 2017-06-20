import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] l =line.split(" ");
			if(Integer.parseInt(l[0])==Integer.parseInt(l[2])&&Integer.parseInt(l[1])==Integer.parseInt(l[3]))
				System.out.println("here");
			else if(Integer.parseInt(l[0])==Integer.parseInt(l[2])&&Integer.parseInt(l[1])<Integer.parseInt(l[3]))
				System.out.println("N");
			else if(Integer.parseInt(l[0])==Integer.parseInt(l[2])&&Integer.parseInt(l[1])>Integer.parseInt(l[3]))
				System.out.println("S");			
			else if(Integer.parseInt(l[0])<Integer.parseInt(l[2])&&Integer.parseInt(l[1])==Integer.parseInt(l[3]))
				System.out.println("E");
			else if(Integer.parseInt(l[0])>Integer.parseInt(l[2])&&Integer.parseInt(l[1])==Integer.parseInt(l[3]))
				System.out.println("W");
			else if(Integer.parseInt(l[0])<Integer.parseInt(l[2])&&Integer.parseInt(l[1])<Integer.parseInt(l[3]))
				System.out.println("NE");						
			else if(Integer.parseInt(l[0])>Integer.parseInt(l[2])&&Integer.parseInt(l[1])<Integer.parseInt(l[3]))
				System.out.println("NW");				
			else if(Integer.parseInt(l[0])<Integer.parseInt(l[2])&&Integer.parseInt(l[1])>Integer.parseInt(l[3]))
				System.out.println("SE");						
			else if(Integer.parseInt(l[0])>Integer.parseInt(l[2])&&Integer.parseInt(l[1])>Integer.parseInt(l[3]))
				System.out.println("SW");				
        }
    }
}
