import java.io.*;
import java.util.ArrayList;
public class Main {
	public static void main(String[] args) throws IOException {
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		while ((line = reader.readLine()) != null){
			ArrayList<String> uniqueNums = new ArrayList<String>();
			String[] allNums = line.split(",");
			for (int i = 0; i <allNums.length; i++){
				if (!uniqueNums.contains(allNums[i])){
					uniqueNums.add(allNums[i]);
				}
			}
			for (int i=0; i< uniqueNums.size();i++ ){
				System.out.print(uniqueNums.get(i));
				if (i != uniqueNums.size()-1) System.out.print(",");
			}
			System.out.println();
		}
	}
}