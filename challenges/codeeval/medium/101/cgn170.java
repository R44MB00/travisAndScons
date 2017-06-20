import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.*;

/**
 *
 * @author cnoguera
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        File file = new File(args[0]);
        try{
            BufferedReader buffer = new BufferedReader(new FileReader(file));
            String line;
            while ((line = buffer.readLine()) != null) {
                line = line.trim().replace("(", "").replace(")", "").replace(" ", "");
                String[] line_list=line.split(",");
                /*               
                    x1  -> points[0]
                    y1  -> points[1]
                    x2  -> points[2]
                    y2  -> points[3]
                    x3  -> points[4]
                    y3  -> points[5]
                    x4  -> points[6]
                    y4  -> points[7]
                */                
                int[] points=new int[8];
                for (int i=0;i<points.length;i++){
                    points[i]=Integer.parseInt(line_list[i]);
                }
                double distance=0;
                List<Double> list_distances = new ArrayList<Double>();
                for(int i=0;i<(points.length-2);i+=2){
                    distance=(Math.sqrt(Math.pow((points[i+2]-points[i]),2)+Math.pow((points[i+3]-points[i+1]),2)));
                    if (!list_distances.contains(distance)){
                        list_distances.add(distance);
                    }
                    /*  System.out.println("x2= "+points[i+2]);
                    System.out.println("x1= "+points[i]);
                    System.out.println("y2= "+points[i+3]);
                    System.out.println("y1= "+points[i+1]);
                    System.out.println("Distancia "+i+" "+distance);*/
                }
                //  ((x2-x1)**2+(y2-y1)**2)**0.5
                if(list_distances.size()==2){
                    System.out.println("true");
                }
                else{
                    System.out.println("false");
                }
            }
         }catch(Exception e){
            System.err.println(e.getMessage());
        }
    }
    
}
