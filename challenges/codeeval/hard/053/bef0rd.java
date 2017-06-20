import java.io.IOException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

class Main
{
    public static void main (String[] args) throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line = "";
        while ((line = in.readLine()) != null) {
            line = line.trim();
            if (line == "") 
                continue;
            System.out.println(lrSubstring(line.toCharArray()));
            
        }
    }

    private static String lrSubstring(char[] str)
    {
        boolean foundRepeatedSubstring = false;
        int bestIndex = 0;
        int bestLength = 0;

        for (int width = 1; width <= str.length/2; width++) {
            for (int offset = 0; offset <= str.length-(2*width); offset++) {
                String base = new String(str, offset, width);

                if (base.trim().length() == 0) 
                    continue;

                boolean continueToNextOffset = true;
                for (int current = offset+width; current <= str.length-width; current++) {
                    String compare = new String(str, current, width);

                    if (base.equals(compare)) {
                        foundRepeatedSubstring = true;
                        bestIndex = offset;
                        bestLength = width;

                        continueToNextOffset = false;
                        return new String(str, bestIndex, bestLength);
                        break;
                    }
                }

                if (!continueToNextOffset) {
                    break;
                }
            }
        }
        
        return "NONE";
    }
}
