import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

public final class Main {
    private static ArrayList<String> answer = new ArrayList<String>();;

    private Main() { }

    public static void main(final String[] args) throws IOException {

        File filename = new File(args[0]);
        BufferedReader reader = new BufferedReader(new FileReader(filename));
        String line;
        int n;
        int l;

        while ((line = reader.readLine()) != null) {
            String[] parts = line.split(",");
            l = Integer.parseInt(parts[0]);
            n = parts[1].length();

            printPerm(parts[1], "", n, l);

            Collections.sort(answer);
            System.out.println(String.join(",", answer));
            answer.clear();
            }
        reader.close();
    }

    private static void printPerm(final String str, final String res,
                                                final int n, final int l) {

         if (l == 0) {
            if (!answer.contains(res)) {
                 answer.add(res);
            }
            return;
         }

         for (int i = 0; i < n; i++) {

            String newRes = res + str.charAt(i);
            printPerm(str, newRes, n, l - 1);
        }
    }
}
