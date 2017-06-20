import java.io.*;
import java.util.*; 
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
			String[] words = line.split(",");
			int index = -1;
			for (int i=words[0].length()-1; i>=0; i--){
				if (words[1].charAt(0) == words[0].charAt(i)){
					index = i;
					break;
				}
			}
			System.out.println(index);
		}
	}
}