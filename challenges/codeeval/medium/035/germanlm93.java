package fluid;
import java.io.*;
/**
 *
 * @author glopez
 */
public class Main {
    
    public static void main(String[] args) {
        String line = "germanlm91@gmail.domain.com";
        boolean res = line.matches("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
        System.out.println(String.valueOf(res).toLowerCase());
        
    }
    
}
