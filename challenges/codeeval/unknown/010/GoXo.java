import java.io.*;
import java.util.*;
public class Main{
	public static void main(String[] args) throws IOException{
	  	File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
			while ((line = reader.readLine()) != null){
				String[] chars = line.split(" +");
				int num = Integer.parseInt(chars[chars.length-1]);
				if ((chars.length)-1 >= num ){
					System.out.println(chars[chars.length-1-num]);
				}
			}
	}    
}
