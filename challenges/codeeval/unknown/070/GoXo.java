import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
public class Main {
	public static void main(String[] args) throws IOException {
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		String[] coord;
		while ((line = reader.readLine()) != null){
			coord = line.split(",");
			String flag = "False";
			int xAu = Integer.parseInt(coord[0]);
			int yAu = Integer.parseInt(coord[1]);
			int xAl = Integer.parseInt(coord[2]);
			int yAl = Integer.parseInt(coord[3]);
			int xBu = Integer.parseInt(coord[4]);
			int yBu = Integer.parseInt(coord[5]);
			int xBl = Integer.parseInt(coord[6]);
			int yBl = Integer.parseInt(coord[7]);
			boolean x = ((inP(xAl,xAu,xBu))||(inP(xAl,xAu,xBl)));
			boolean y = ((inP(yAu,yAl,yBu))||(inP(yAu,yAl,yBl)));
			if (x&&y){
				System.out.println("True");
			}else{
	
				System.out.println("False");
			}	
		}
	}
    public static boolean inP(int up, int low, int point) {
    	if ((point<=up)&&(point>=low)) return true;
    	return false;
    }

}

