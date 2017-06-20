import java.io.*; 

public class Main {
    public static void main(String[] args) throws FileNotFoundException {
    	File file = new File(args[0]);
		System.out.println(file.length()); 
    }
}
