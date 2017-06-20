package fluid;

import java.nio.ByteOrder;
/**
 *
 * @author glopez
 */
public class Main {
    
    public static void main(String[] args) {
        ByteOrder b = ByteOrder.nativeOrder();
        if (b.equals(ByteOrder.BIG_ENDIAN)) {
            System.out.println("BigEndian");
        } else {
            System.out.println("LittleEndian");
        }
    }
    
}
