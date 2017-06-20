import java.io.*;
public class MinimumCoins074 {
	public static void main(String[] args) throws IOException {
	File filename = new File(args[0]);  
	BufferedReader reader = new BufferedReader(new FileReader(filename));
	String line;
		while ((line = reader.readLine()) != null){
			int count = 0;
			int result = Integer.parseInt(line);
			count += result/5;
			int residue = result%5;
			if (residue>=3){
				count+=residue/3;
				count += residue %3;
			}else{
				count += residue;
			}
			System.out.println(count);
		}
	}
}
