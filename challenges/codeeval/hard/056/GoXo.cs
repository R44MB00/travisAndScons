using System;

class RobotMovement
{
  static int way = 0;
  static int fx = 3;
  static int fy = 3;

  static void Main(string[] args)
  {

    int[,] grid = new int[4,4];

    for (int i = 0; i <= fx; i++)
      for (int j = 0; j <= fy; j++)
        grid[i,j] = 0;

    MovRobot(grid, 0, 0);
    Console.WriteLine(way);

  }
  static void MovRobot(int[,] grid, int x, int y)
  {

    if ((x > fx) || (x < 0) || (y > fy) || (y < 0)) return;

    if (grid[x,y] == 1) return;

    if ((x == fx) && (y == fy))
    {
      way += 1;
      return;
    }

    grid[x,y] = 1;
    MovRobot(grid, x + 1, y);
    MovRobot(grid, x, y + 1);
    MovRobot(grid, x - 1, y);
    MovRobot(grid, x, y - 1);
    grid[x,y] = 0;

  }
}
