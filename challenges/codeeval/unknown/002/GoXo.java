import java.io.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
public class Main {
	public static void main(String[] args) throws IOException {
	File filename = new File(args[0]);  
	BufferedReader reader = new BufferedReader(new FileReader(filename));
	String line;
	ArrayList<String> lines = new ArrayList<String>();
		while ((line = reader.readLine()) != null){
			lines.add(line);
		}
		reader.close();
		int count = Integer.parseInt(lines.get(0).substring(0).trim());
		Collections.sort(lines, new SampleComparator());
		Collections.reverse(lines);
			for (int i =0; i<count;i++){
				System.out.println(lines.get(i));
			}
	}
}
class SampleComparator implements Comparator<String> {
    @Override
    public int compare(String o1, String o2) {
    return new Integer(o1.length()).compareTo(o2.length());
    }
}
