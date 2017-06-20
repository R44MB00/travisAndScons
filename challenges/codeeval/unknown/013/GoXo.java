import java.io.*;
import java.util.ArrayList;
public class Main {
	public static void main(String[] args) throws IOException {
	File filename = new File(args[0]);  
	BufferedReader reader = new BufferedReader(new FileReader(filename));
	String line;
	ArrayList<Character> charac= new ArrayList<Character>();
	while ((line = reader.readLine()) != null){
		String[] part= line.split(",");
		for (int i=0; i < part[1].length();i++){
			if (part[1].charAt(i) != ' '){
				charac.add(part[1].charAt(i));
			}
		}
		for (int i=0; i < part[0].length();i++){
			Character current = part[0].charAt(i);	
			if (!charac.contains(current)){
				System.out.print(current);	
			}
		}
	charac.clear();
	System.out.println();	
	}
	reader.close();
	}
}
