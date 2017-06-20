import java.io.IOException;
import java.io.File;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;

public final class Main {
  private static HashMap<String, Integer> cards =
                                            new HashMap<String, Integer>();
  private Main() { }
  public static void main(final String[] args) throws IOException {

    cards.put("2", 2);
    cards.put("3", 3);
    cards.put("4", 4);
    cards.put("5", 5);
    cards.put("6", 6);
    cards.put("7", 7);
    cards.put("8", 8);
    cards.put("9", 9);
    cards.put("10", 10);
    cards.put("J", 11);
    cards.put("Q", 12);
    cards.put("K", 13);
    cards.put("A", 14);

    File filename = new File(args[0]);
    BufferedReader reader = new BufferedReader(new FileReader(filename));
    String line;

    while ((line = reader.readLine()) != null) {

      String[] parts = line.split("\\|");
      String trump = parts[1].trim();
      String[] pair = parts[0].trim().split("\\s");
      String[] card1 = retValues(pair[0]);
      String[] card2 = retValues(pair[1]);

      if ((card1[1].equals(trump)) && (card2[1].equals(trump))) {
         printMax(card1, card2);
      } else if (card1[1].equals(trump)) {
          System.out.println(pair[0]);
      } else if (card2[1].equals(trump)) {
          System.out.println(pair[1]);
      } else {

        if (card1[0].equals(card2[0])) {
          System.out.println(parts[0].trim());
        } else {
          printMax(card1, card2);
        }
      }
    }
  }
  private static String[] retValues(final String card) {

    String[] ret = new String[2];
    int len = card.length();

    if (len > 2) {
      ret[0] = card.substring(0, 2);
    } else {
      ret[0] = card.substring(0, 1);
    }
    ret[1] = Character.toString(card.charAt(len - 1));
    return ret;
  }

  private static void printMax(final String[] cd1, final String[] cd2) {

    if (cards.get(cd1[0]) > cards.get(cd2[0])) {
      System.out.println(cd1[0] + cd1[1]);
    } else {
      System.out.println(cd2[0] + cd2[1]);
    }
  }
}
