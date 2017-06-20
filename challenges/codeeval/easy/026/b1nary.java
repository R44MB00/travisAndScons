import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
		File file = new File(args[0]);
		double bytes = file.length();
		System.out.println((int)bytes);
	}
}