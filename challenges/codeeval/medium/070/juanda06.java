import java.util.*;
import java.io.*;

public class Main {
    public static void main (String[] args) throws FileNotFoundException {
    File file = new File(args[0]);
    Scanner lines = new Scanner(file); 
	 
	 while (lines.hasNextLine()) {
	 	String line = lines.nextLine(); 
        String[] coordinates = line.split(","); 
        int upX1 = Integer.parseInt(coordinates[0]);
        int upY1 = Integer.parseInt(coordinates[1]);
        int downX1 = Integer.parseInt(coordinates[2]);
        int downY1 = Integer.parseInt(coordinates[3]);
        int upX2 = Integer.parseInt(coordinates[4]);
        int upY2 = Integer.parseInt(coordinates[5]);
        int downX2 = Integer.parseInt(coordinates[6]);
        int downY2 = Integer.parseInt(coordinates[7]);
        
        if (intersects(upX1, upY1, downX1, downY1, upX2, upY2, downX2, downY2)) {
            System.out.println("True"); 
        } else {
            System.out.println("False"); 
        }
	 }
    }
    
    public static boolean intersects(int upX1, int upY1, int downX1, int downY1, int                                             upX2, int upY2, int downX2, int downY2) {
        int bottomLeftX2 = upX2;
        int bootomLeftY2 = downY2; 
        int topRightX2 = downX2; 
        int topRightY2 = upY2; 
        
        return pointIntersection(upX1, upY1, downX1, downY1, upX2, upY2) ||
            pointIntersection(upX1, upY1, downX1, downY1, downX2, downY2) ||
            pointIntersection(upX1, upY1, downX1, downY1, bottomLeftX2, bootomLeftY2) ||
            pointIntersection(upX1, upY1, downX1, downY1, topRightX2, topRightY2);
    }
    
    public static boolean pointIntersection(int upX1, int upY1, int downX1, int downY1, int                x, int y) {
        
        return (x <= downX1 && x >= upX1 && y <= upY1 && y >= downY1); 
        
    }
}
