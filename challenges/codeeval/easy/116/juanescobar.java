public class MorseCode {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] abc = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0"};
            String[] morse = {".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--..",".----","..---","...--","....-",".....","-....","--...","---..","----.","-----"};
            String[] codes = line.split("  ");

            for (int i=0; i < codes.length; i++) {
                String code = codes[i].trim();
                for (int j=0; j < morse.length; j++) {
                    String m = morse[i];
                    if (m.equals(code)) {
                        System.out.print(abc[j]);
                    }
                }
            }
            System.out.println();
        }
    }
}
