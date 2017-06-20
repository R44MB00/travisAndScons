import java.io.*;
public class Main {
	public static void main(String[] args) throws IOException {
	File filename = new File(args[0]);  
	BufferedReader reader = new BufferedReader(new FileReader(filename));
	String line;
	while ((line = reader.readLine()) != null){
		System.out.println(line.toLowerCase());
	}
	reader.close();
	}
}
