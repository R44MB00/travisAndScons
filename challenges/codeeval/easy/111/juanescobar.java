public class LongestWord {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] words = line.split(" ");
            List<String> flags;

            for (int i=0; i < words.length; i++) {
                current = words[i];
                if (current.length() > longest.length()) {
                    longest = current;
                }
            }

            for (int i=0; i < words.length; i++) {
                current = words[i];
                if (current.length() = longest.length()) {
                    longest = current;
                }
            }

            System.out.println(longest);

        }
    }
}
