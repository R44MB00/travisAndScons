public class MixedContent {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] items = line.split("|");
            List<String> words = new ArrayList<String>();
            List<Integer> numbers = new ArrayList<Integer>();

            for (int i=0; i < items.length; i++) {
                String current = items[i];
                if ( ! current.substring(0, 0).matches("[0-9]") ) {
                    words.add(current);
                } else {
                    numbers.add(current);
                }
            }

            String output = "";
            for (int i=0; i < words.size(); i++) {
                String current = words.get(i);

                if (i != words.size()-1) {
                    output += current + ",";
                } else {
                    output += output + "|";
                }
            }

            for (int i=0; i < numbers.size(); i++) {
                String current = numbers.get(i);

                if (i != numbers.size()-1) {
                    output += current + ",";
                } else {
                    output += output;
                }
            }

            System.out.println(output);
        }
    }
}
