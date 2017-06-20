import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public class Main {

	static ArrayList<String> answer = new ArrayList<String>();

	public static void main(String[] args) throws IOException {
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		
			while ((line = reader.readLine()) != null){
			if (line.length()> 0){

				
				String[] array = line.split("");
				int n = array.length;
				perm(n,array);
				java.util.Collections.sort(answer);
				System.out.println(String.join(",",answer));
				answer.clear();
			
			}
		}
	}
	private static void perm(int n, String[] array){
		
		if (n == 1) answer.add(String.join("",array));
		else{

			for (int i = 0;i < n-1; i++){
				perm(n-1, array);
			
				if (n % 2 == 0){

					String cpy = array[i];
					array[i] = array[n-1];
					array[n-1] = cpy;

				}else{

					String cpy = array[0];
					array[0] = array[n-1];
					array[n-1] = cpy;

				}
			}

			perm (n-1, array);
		}
	}
}