import java.io.IOException;
import java.io.File;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.Collections;

public final class Main {
  private static HashMap<Character, Integer> cardN =
                                            new HashMap<Character, Integer>();
  private Main() { }
  public static void main(final String[] args) throws IOException {

    cardN.put('2', 2);
    cardN.put('3', 3);
    cardN.put('4', 4);
    cardN.put('5', 5);
    cardN.put('6', 6);
    cardN.put('7', 7);
    cardN.put('8', 8);
    cardN.put('9', 9);
    cardN.put('T', 10);
    cardN.put('J', 11);
    cardN.put('Q', 12);
    cardN.put('K', 13);
    cardN.put('A', 14);

    File filename = new File(args[0]);
    BufferedReader reader = new BufferedReader(new FileReader(filename));
    String line;

    while ((line = reader.readLine()) != null) {

      String player1 = line.substring(0, 14);
      String player2 = line.substring(15, 29);

      String p1 = calculatePoints(player1);
      String p2 = calculatePoints(player2);

      String[] p1Parts = p1.split("-");
      String[] p2Parts = p2.split("-");

      int p1Point = Integer.parseInt(p1Parts[0]);
      int p2Point = Integer.parseInt(p2Parts[0]);

      String answer = comparePoints(p1Point, p2Point);

      if (!answer.equals("none")) {
        System.out.println(answer);
      } else {
        p1Point = Integer.parseInt(p1Parts[1]);
        p2Point = Integer.parseInt(p2Parts[1]);
        answer = comparePoints(p1Point, p2Point);

        if (!answer.equals("none")) {
          System.out.println(answer);
        } else {

          p1Point = 0;
          p2Point = 0;
          ArrayList<Integer> p1Array = new ArrayList<Integer>();
          ArrayList<Integer> p2Array = new ArrayList<Integer>();

          for (int i = 2; i < p1Parts.length; i++) {

            p1Array.add(cardN.get(p1Parts[i].charAt(0)));
            p2Array.add(cardN.get(p2Parts[i].charAt(0)));
          }
          Collections.sort(p1Array);
          Collections.sort(p2Array);

          for (int i = p1Array.size() - 1; i >= 0; i--) {

            answer = comparePoints(p1Array.get(i), p2Array.get(i));
            if (!answer.equals("none")) {
              break;
            }
          }
          System.out.println(answer);
        }
      }
    }
  }

  private static String comparePoints(final int p1, final int p2) {
    if (p1 > p2) {
      return "left";
    } else if (p2 > p1) {
      return "right";
    } else {
      return "none";
    }
  }

  private static String calculatePoints(final String player) {

    HashMap<Character, String> hand = new HashMap<Character, String>();
    String[] parts = player.split(" ");

    for (String pair: parts) {

        Character num = pair.charAt(0);
        String set = pair.substring(1, 2);

      if (!hand.containsKey(num)) {
        hand.put(num, set);

      } else {
        hand.put(num, hand.get(num) + set);
      }
    }

    int type = hand.size();
    boolean sameSuit = sameSuit(hand);
    int high = highCard(hand);

    if (type == 5) {

      if ((sameSuit) && (royal(hand))) {
        return "10-" + Integer.toString(high);
      }
      if ((sameSuit) && (straight(hand))) {
        return "9-" + Integer.toString(high);
      }
      if (straight(hand)) {
        return "5-" + Integer.toString(high);
      }
    }

    if (type == 4) {
      int pair = checkTwins(hand, 2);
      return "2-" + Integer.toString(pair) + removeTwins(hand, 2);
    }

    if (type == 3) {
      int third = checkTwins(hand, 3);

      if (third != 0) {
        return "4-" + Integer.toString(third) + removeTwins(hand, 3);
      } else {
        int pairs = checkTwins(hand, 2);
        return "3-" + Integer.toString(pairs) + removeTwins(hand, 2);
      }
    }

    if (type == 2) {
      int forth = checkTwins(hand, 4);
      if (forth != 0) {
        return "8-" + Integer.toString(forth) + removeTwins(hand, 4);
      } else {
        int third = checkTwins(hand, 3);
        return "7-" + Integer.toString(third) + removeTwins(hand, 3);
      }
    }

    if (sameSuit) {
      return "6-" + Integer.toString(high);
    }

    return "1-" + Integer.toString(high);
  }

  private static int checkTwins(final HashMap<Character, String> hand,
                                final int n) {
    int ret = 0;
    int max = 0;
    for (Character num : hand.keySet()) {
      if (hand.get(num).length() == n) {
        ret = cardN.get(num);
        if (ret > max) {
          max = ret;
        }
      }
    }
    return max;
  }

  private static String removeTwins(final HashMap<Character, String> hand,
                                    final int n) {
      String ret = "";

      for (Character num : hand.keySet()) {
        if (hand.get(num).length() < n) {
          ret += "-" + num;
        }
      }
      return ret;
  }

  private static int highCard(final HashMap<Character, String> hand) {
    int ret = 0;

    for (Character num : hand.keySet()) {
      int current = cardN.get(num);

      if (current > 0) {
        ret = current;
      }
    }
    return ret;
  }

  private static boolean royal(final HashMap<Character, String> hand) {

    Character[] royal = {'T', 'J', 'Q', 'K', 'A'};

    for (int i = 0; i < 5; i++) {
      if (!hand.containsKey(royal[i])) {
        return false;
      }
    }
    return true;
  }

  private static boolean straight(final HashMap<Character, String> hand) {

    boolean ret = false;
    String canvas = "23456789TJQKA2345";
    for (int i = 0; i < 13; i++) {

      char[] current = canvas.substring(i, i + 5).toCharArray();

      for (int j = 0; j < 5; j++) {
        if (hand.containsKey(current[j])) {
          ret = true;
        } else {
          ret = false;
          break;
        }
      }
      if (ret) { break; }
    }
    return ret;
  }

  private static boolean sameSuit(final HashMap<Character, String> hand) {

    HashMap.Entry<Character, String> entry = hand.entrySet().iterator().next();
    String current = entry.getValue();

    for (String set : hand.values()) {
        if (!set.equals(current)) {
          return false;
        }
    }
    return true;
  }
}
