using System;
class Program
{
    static void Main(){
		for (int x = 1; x <= 12 ; x++){
			Console.Write(x);
			for (int y=2; y<=12 ; y++){
				if (x*y >=10){
					if (x*y >= 100)
						Console.Write(" "+(x*y));
					else
						Console.Write("  "+(x*y));
				}
				else
					Console.Write("   "+(x*y));
			}
			Console.WriteLine();
		}
	}
}