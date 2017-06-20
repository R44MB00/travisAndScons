import java.io.IOException;
import java.io.File;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;

public final class Main {

    private Main() { }
    public static void main(final String[] args) throws IOException {
    File filename = new File(args[0]);
    BufferedReader reader = new BufferedReader(new FileReader(filename));
    String line;
    final int nIdx = 0;
    final int kIdx = 1;
    final int aIdx = 2;
    final int bIdx = 3;
    final int cIdx = 4;
    final int rIdx = 5;

    while ((line = reader.readLine()) != null) {
        String[] parts = line.split(",");
        ArrayList<Integer> m = new ArrayList<Integer>();

        int n = Integer.parseInt(parts[nIdx]);
        int k = Integer.parseInt(parts[kIdx]);
        int a = Integer.parseInt(parts[aIdx]);
        int b = Integer.parseInt(parts[bIdx]);
        int c = Integer.parseInt(parts[cIdx]);
        int r = Integer.parseInt(parts[rIdx]);

        m.add(a);
        for (int i = 1; i < k; i++) {
            m.add(((b * m.get(i - 1)) + c) % r);
        }

        for (int j = k; j < n; j++) {

            ArrayList<Integer> mSub =
                new ArrayList<Integer>(m.subList(j - k, j));
            int min = 0;
            while (mSub.contains(min)) {
               min++;
            }
            m.add(min);
        }
        System.out.println(m.get(n - 1));
        }
    }
}
