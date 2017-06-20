import java.io.*;
public class SubmitSolution {
    public static void main (String[] args) throws IOException {
        File file = new File("test.txt");
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();

            int lengthFibonnaci=Integer.parseInt(line);
 			int fibonacci = 0;
 			int last = 1;
 			int penultimate;
            for (int i = 1; i <= lengthFibonnaci; i++) {
 				penultimate = fibonacci;
 				fibonacci = last + fibonacci; 
 				last = penultimate;

 				
 			}
 			System.out.println(fibonacci);
            //System.out.println(line);
        }
    }
}
