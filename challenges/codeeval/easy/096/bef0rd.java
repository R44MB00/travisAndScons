
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            System.out.println(reverseCase(line));
        }
    }
	public static String reverseCase(String t)
	{
		char[] c = t.toCharArray();
		for (int i = 0; i < c.length; i++)
		{
			if (Character.isUpperCase(c[i]))
				c[i] = Character.toLowerCase(c[i]);
			else 
				c[i] = Character.toUpperCase(c[i]);
		}
		return new String(c);
	}
}

