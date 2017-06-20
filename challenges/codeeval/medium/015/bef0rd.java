import java.nio.ByteOrder;
import java.io.*;

public class Main {
    public static void main (String[] args) throws IOException {
        if (ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN)) 
            System.out.print("BigEndian\n");
        else 
            System.out.print("LittleEndian\n");
    }
}
