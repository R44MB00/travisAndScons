
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            System.out.println(decodificar(line.toLowerCase()));
        }
    }
	public static String decodificar(String t)
	{
		char[] c = t.toCharArray();
		for (int i = 0; i < c.length; i++)
		{
			
            if (c[i] >= 65 && c[i] <= 70 || c[i] >= 97 && c[i] <= 102 )
                c[i] = (char)(c[i]+20);
            else
                if (c[i] >= 85 && c[i] <= 90 || c[i] >= 117 && c[i] <= 122)
                    c[i] = (char)(c[i]-20);
                else
                    if (c[i] >= 71 && c[i] <= 77 || c[i] >= 102 && c[i] <= 109)
                        c[i] = (char)(c[i]+7);
                    else
                        c[i] = (char)(c[i]-7);
        }
		return new String(c);
	}
}

