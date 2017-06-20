import java.io.IOException;
import java.io.File;
import java.io.BufferedReader;
import java.io.FileReader;

public final class Main {

  private static int rs;
  private static int cs;

  private Main() {
    rs = 0;
    cs = 0;
  }

  public static void main(final String[] args) throws IOException {

    File filename = new File(args[0]);
    BufferedReader reader = new BufferedReader(new FileReader(filename));
    String line;

    while ((line = reader.readLine()) != null) {

      String[] rows = line.split("\\|");
      rs = rows.length;
      cs = rows[0].trim().split(" ").length;

      int[][] grid = new int[rs][cs];

      for (int i = 0; i < rows.length; i++) {
        String[] cols = rows[i].trim().split(" ");
         for (int j = 0; j < cols.length; j++) {

          if (cols[j].equals("o")) {
            grid[i][j] = 1;
          } else {
            grid[i][j] = 0;
          }
        }
      }

      int count = 0;
      for (int i = 0; i < rs; i++) {
        for (int j = 0; j < cs; j++) {
          count += grid[i][j];
          grid = parseGrid(grid, i, j);
        }
      }
      System.out.println(count);
    }
  }
  private static int[][] parseGrid(final int[][] grid,
                                   final int x, final int y) {

    if ((x >= rs) || (y >= cs) || (x < 0) || (y < 0)) {
      return grid;
    }

    if (grid[x][y] == 1) {

      grid[x][y] = 0;

      grid = parseGrid(grid, x, y + 1);
      grid = parseGrid(grid, x + 1, y);
      grid = parseGrid(grid, x, y - 1);
      grid = parseGrid(grid, x - 1, y);

      grid = parseGrid(grid, x + 1, y + 1);
      grid = parseGrid(grid, x - 1, y - 1);
      grid = parseGrid(grid, x + 1, y - 1);
      grid = parseGrid(grid, x - 1, y + 1);
    }

    return grid;
  }
}
