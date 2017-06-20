import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
		String alp="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            int v =Integer.parseInt(line);
			int dividend = v;
			String columnName = "";
			int modulo;
			while (dividend > 0)
			{
				modulo = (dividend - 1) % 26;
				columnName = alp.charAt(modulo) + columnName;
				dividend = (int)((dividend - modulo) / 26);
			} 
			System.out.println(columnName);
        }
    }
}
