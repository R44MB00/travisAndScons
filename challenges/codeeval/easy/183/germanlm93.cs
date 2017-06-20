using System;

namespace details
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			String line = "XXXX.YYYY,X...Y..Y,XX..YYYY,X.....YY,XX....YY";
			Calculate (line);
		}

		public static String[] Order(String line){
			String[] iRows = line.Split(',');
			String aux = "";
			for (int i = 0; i < iRows.Length; i++) {
				aux = "";
				for (int j = 0; j < iRows [i].Trim ().Length; j++) {
					aux += iRows [i].Trim ()[j];
				}
				iRows [i] = aux;
				//Console.WriteLine (aux);
			}
			return iRows;
		}

		public static void Calculate(String line){
			String[] mat = Order (line);
			int Xpos = 0;
			int Ypos = 0;
			int XYmin = 99;
			int aux = 0;
			for (int i = 0; i < mat.Length; i++) {
				Xpos = mat [i].LastIndexOf ("X") + 1;
				Ypos = mat [i].IndexOf ("Y");
				aux = Math.Abs(Xpos - Ypos);
				if (XYmin > aux) {
					XYmin = aux;
				}
			}
			Console.WriteLine (XYmin);
		}
	}
}
