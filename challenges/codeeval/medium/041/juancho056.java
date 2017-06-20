import java.io.*;

public class Main {
	public static void main(String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader input = new BufferedReader(new FileReader(file));
		String line;
		while ((line = input.readLine()) != null) {
			if(null != line && line.length() > 0){
				String[] list = line.split(";");
				String[] array = list[1].split(",");
	
				String duplicated = null;
	
				for (int i = 0; i < array.length; i++) {
					for (int j = 0; j < array.length; j++) {
						if (j != i) {
							if (array[i].equals(array[j])) {
								duplicated = array[i];
							}
						}
					}
				}
				System.out.println(duplicated);
			}
        }
	}
}
