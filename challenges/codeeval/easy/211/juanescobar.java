import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            
            String[] parts = line.split(" - ");
            String letters = parts[1];
            String[] wines = parts[0].split(" ");

            String output = "";
            for (int i=0; i < wines.length; i++) {
                
                String wine = wines[i];
                int has_letter = 0;
                int total_letters = 0;

                for (int j=0; j < letters.length(); j++) {
                    for (int k=0; k < wine.length(); k++) {
                        
                        char s1 = wine.charAt(k);
                        char s2 = letters.charAt(j);

                        if (s1 == s2) {
                            has_letter = 1;
                            total_letters++;
                        }
                    }
                }

                if (letters.length() <= total_letters) {
                    output += wine + " ";
                }
            }

            if (output.equals("")) {
                System.out.println("False");
            } else {
                System.out.println(output);
            }

        }
    }
}
