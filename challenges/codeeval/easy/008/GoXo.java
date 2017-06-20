import java.io.*;
public class Main {
	public static void main(String[] args) throws IOException {
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		String[] word;
		while ((line = reader.readLine()) != null){
			word = line.split(" ");
			for(int i =0; i< word.length;i++){
				System.out.print(word[word.length-i-1]+" ");
			}
			System.out.println();
		}
		reader.close();
	}
}
