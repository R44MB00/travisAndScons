import java.io.IOException;
import java.io.File;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;

public final class Main {
  private static HashMap<Character, Integer> roman =
                                            new HashMap<Character, Integer>();

  private Main() { }
  public static void main(final String[] args) throws IOException {

    roman.put('I', 1);
    roman.put('V', 5);
    roman.put('X', 10);
    roman.put('L', 50);
    roman.put('C', 100);
    roman.put('D', 500);
    roman.put('M', 1000);

    File filename = new File(args[0]);
    BufferedReader reader = new BufferedReader(new FileReader(filename));
    String line;

    while ((line = reader.readLine()) != null) {
      int res = 0;
      int len = line.length();

      for (int i = 0; i < len - 1; i += 2) {

        int num = Character.getNumericValue(line.charAt(i));
        int sym = roman.get(line.charAt(i + 1));

        if (i < len - 3) {

          int nSym = roman.get(line.charAt(i + 3));

          if (nSym > sym) {
            res -= num * sym;
            continue;
          }
        }
        res += num * sym;
      }
      System.out.println(res);
    }
  }
}
