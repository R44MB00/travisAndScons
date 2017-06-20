import java.io.*;
import java.util.*;
public class Main {
	public static void main(String[] args) throws IOException{
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		ArrayList<Integer> Fibo = new ArrayList<Integer>();
		Fibo.add(0);
		Fibo.add(1);
			while ((line = reader.readLine()) != null){
				int position = Integer.parseInt(line);
				int i = Fibo.size();
				if (position >= Fibo.size()){
					while(i <= position){
						Fibo.add(Fibo.get(i-1)+Fibo.get(i-2));
						i++;
					}
				System.out.println(Fibo.get(position));	
				}else System.out.println(Fibo.get(position));
			}
	}    
}

