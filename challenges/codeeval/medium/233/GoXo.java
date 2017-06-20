import java.io.IOException;
import java.io.File;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Collections;
import java.util.ArrayList;

public final class Main {

  private Main() { }

  public static void main(final String[] args) throws IOException {

    File filename = new File(args[0]);
    BufferedReader reader = new BufferedReader(new FileReader(filename));
    String line;

    while ((line = reader.readLine()) != null) {

      ArrayList<Integer> list = new ArrayList<Integer>();
      String[] parts = line.split("\\ ");

      for (int i = 0; i < parts.length; i++) {
        list.add(Integer.parseInt(parts[i]));
      }

      ArrayList<Integer> sortedList = new ArrayList<Integer>(list);
      Collections.sort(sortedList);
      String sorted = listToString(sortedList);
      System.out.println(combSort(list, sorted));
    }
  }
  private static int combSort(final ArrayList<Integer> list,
                              final String sorted) {
    int it = 0;

    int size = list.size();
    int range = (int) (size / 1.25);

    while ((range > 0) && (!listToString(list).equals(sorted))) {

      it += 1;

      for (int i = 0; i + range < size; i++) {

        int low = list.get(i);
        int high = list.get(i + range);

        if (low > high) {
          list.set(i, high);
          list.set(i + range, low);
        }
      }

      range = (int) (range / 1.25);
      if (range < 1) { range = 1; }
    }
    return it;
  }

  private static String listToString(final ArrayList<Integer> list) {

    ArrayList<String> sList = new ArrayList<String>();

    for (Integer in : list) {
      sList.add(Integer.toString(in));
    }
    return String.join(" ", sList);
  }
}
