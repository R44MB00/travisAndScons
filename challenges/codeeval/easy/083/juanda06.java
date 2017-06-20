import java.io.*;
import java.util.*;

public class Main
{
    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        while ((line = in.readLine()) != null) {
            line = line.trim();
            System.out.println(findMaxBeautyOfString(line));
        }

        in.close();
    }

    
    public static int findMaxBeautyOfString(String str)
    {
        HashMap<Character, Integer> map = new HashMap<Character, Integer>();

        for (char c : str.toCharArray()) {
            c = Character.toLowerCase(c);

            if (!Character.isLetter(c)) {
                continue;
            }

            if (map.containsKey(c)) {
                int value = map.get(c);
                map.put(c, value+1);
            } else {
                map.put(c, 1);
            }
        }

        ValueComparator bvc =  new ValueComparator(map);
        TreeMap<Character, Integer> sortedMap = new TreeMap<Character, Integer>(bvc);
        sortedMap.putAll(map);

        int currentLetterValue = 26;
        int maxStringBeauty = 0;
        for (char c : sortedMap.keySet()) {
            int letterFrequency = map.get(c);
            maxStringBeauty += letterFrequency * currentLetterValue;
            currentLetterValue--;
        }

        return maxStringBeauty;
    }

    
    private static class ValueComparator implements Comparator<Character>
    {
        Map<Character, Integer> _base;
        public ValueComparator(Map<Character, Integer> base)
        {
            _base = base;
        }

        @Override
        public int compare(Character a, Character b)
        {
            
            if (_base.get(a) >= _base.get(b)) {
                return -1;
            } else {
                return 1;
            }
        }
    }

}
