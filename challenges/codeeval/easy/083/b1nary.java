import java.io.*;
import java.util.*;
public class Main {
	private static class ValueComparator implements Comparator<Character>
    {
        Map<Character, Integer> _base;
        public ValueComparator(Map<Character, Integer> base)
        {
            _base = base;
		}
		public int compare(Character a, Character b)
        {
            if (_base.get(a) >= _base.get(b)) {
                return -1;
            } else {
                return 1;
			}
		}
	}
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
			line = line.toLowerCase();
			HashMap<Character,Integer> map = new HashMap<Character,Integer>();          
			for(int i = 0; i < line.length(); i++){
				if (Character.isLetter(line.charAt(i))){
					char c = line.charAt(i);
					Integer val = map.get(new Character(c));
					if(val != null){
						map.put(c, new Integer(val + 1));
					}else{
						map.put(c,1);
					}
				}
				
			}
			ValueComparator bvc = new ValueComparator(map);
			TreeMap<Character, Integer> sorted_map = new TreeMap<Character, Integer>(bvc);
			sorted_map.putAll(map);
			int beauty = 26;
			int solve = 0;
			for (char c : sorted_map.keySet()) {
				solve += (map.get(c))*beauty;
				beauty--;
			}
			System.out.println(solve);
		}
	}
}
			