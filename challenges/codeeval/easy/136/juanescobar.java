import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class RacingChars {

    public static String CHECKPOINT = "C";
    public static String GATE = "_";
    public static String LEFT = "/";
    public static String STRAIGHT = "|";
    public static String RIGHT = "\\";

    public static void main (String[] args) throws IOException
    {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        int p0 = -1;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String out = "";
            if (hasChar(line, RacingChars.CHECKPOINT)) {
                for (int i = 0; i < line.length(); i++) {
                    if (Character.toString(line.charAt(i)).equals(RacingChars.CHECKPOINT)) {
                        out += RacingChars.getWay(i, p0);
                        p0 = i;
                    } else {
                        out += line.charAt(i);
                    }
                }
            } else {
                for (int i = 0; i < line.length(); i++) {
                    if (Character.toString(line.charAt(i)).equals(RacingChars.GATE)) {
                        out += RacingChars.getWay(i, p0);
                        p0 = i;
                    } else {
                        out += line.charAt(i);
                    }
                }
            }

            System.out.println(out);
        }
    }

    public static String getWay(int p1, int p0)
    {
        String out = "";
        if (p0 == -1 || p1 == p0) {
            out = RacingChars.STRAIGHT;
        } else if (p1 < p0) {
            out = RacingChars.LEFT;
        } else if (p1 > p0) {
            out = RacingChars.RIGHT;
        }
        return out;
    }

    public static boolean hasChar(String haystack, String needed)
    {
        if (haystack.contains(needed)) {
            return true;
        } else {
            return false;
        }
    }
}
