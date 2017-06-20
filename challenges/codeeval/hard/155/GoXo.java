import java.io.IOException;
import java.io.File;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;
import java.util.ArrayList;

public final class Main {

  private Main() { }
  public static void main(final String[] args) throws IOException {
    File filename = new File(args[0]);
    BufferedReader reader = new BufferedReader(new FileReader(filename));
    String line;

    while ((line = reader.readLine()) != null) {

      String[] parts = line.split("\\| ");
      int n = Integer.parseInt(parts[0].trim());
      char c = parts[1].charAt(0);

      int chNum = (int) c;
      String[] nums = parts[2].split(" ");
      ArrayList<Integer> keys = findKey(nums, n, chNum);
      ArrayList<String> ph = new ArrayList<String>();
      for (Integer key : keys) {
        String phrase = "";
        for (int i = 0; i < nums.length; i++) {
          int pos = Integer.parseInt(nums[i]) - key;
          phrase += (char) pos;
        }
        ph.add(phrase);
        System.out.println(phrase);
      }

    }
  }

  public static ArrayList<Integer> findKey(final String[] nums,
                                           final int n, final int chNum) {

    ArrayList<Integer> ret = new ArrayList<Integer>();
    HashMap<String, Integer> keys = new HashMap<String, Integer>();

    for (int i = nums.length - 1; i >= (n * 2) - 1; i--) {

      for (int j = i - n; j >= n - 1; j--) {

        if (nums[i].equals(nums[j])) {
          int rpt = 1;

          for (int k = 1; k < n; k++) {
            if (!nums[i - k].equals(nums[j - k])) { break; }
            if (k == n - 1) {
              if (!keys.containsKey(nums[i])) {
                keys.put(nums[i], 2);
              } else {
                keys.put(nums[i], keys.get(nums[i]) + 1);
              }
            }
          }
        }
      }
    }
    for (String s : keys.keySet()) {
      if (keys.get(s) == 2) {
        Integer chCurr = Integer.parseInt(s);
        if (chCurr - chNum > 0) {
          ret.add(chCurr - chNum);
        }
      }
    }
    return ret;

  }
}
