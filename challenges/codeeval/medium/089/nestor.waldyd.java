/**
 * 
 */
import java.io.*;
import java.util.*;
/**
 * @author waldyd
 *
 */
public class Main {
	private static List<ArrayList<Integer>> tree;
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
            File file = new File(args[0]);
            BufferedReader in = new BufferedReader(new FileReader(file));
            tree = new ArrayList<ArrayList<Integer>>();
            String s;
            while ((s = in.readLine()) != null) {
                String[] values = s.split(" ");
                //temp is used to store each row
                ArrayList<Integer> temp = new ArrayList<Integer>();
                for (int j = 0; j < values.length; j++) {
                    temp.add(Integer.parseInt(values[j]));
                }
                tree.add(temp);
            }
            System.out.println(tree);
            maxValue(tree.size());
            in.close();
        } catch (IOException e) {
            System.out.println("File Read Error: " + e.getMessage());
        }
    }
     
     
    public static void maxValue(int n) {
        //n is the size of the tree
        for (int i = n - 2; i >= 0; i--) {
            for (int j = 0; j <= i; j++) {
                if(tree.get(i + 1).get(j) > tree.get(i + 1).get(j + 1)) 
                    tree.get(i).set(j, tree.get(i + 1).get(j) + tree.get(i).get(j));
                else
                    tree.get(i).set(j, tree.get(i + 1).get(j + 1) + tree.get(i).get(j));
            }
        }
        System.out.println(tree.get(0).get(0));
    }

}

