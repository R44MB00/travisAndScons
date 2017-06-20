using System;

namespace StringRotation.cs
{
	class MainClass
	{
		public static void Main (string[] args){
			String line = "Basefont,tBasefon";
			String tru = line.Split (',')[0].Trim();
			String rev = line.Split (',')[1].Trim();
			int i = 0;
			bool state = true;
			while (true) {
				if (i < tru.Length) {
					char let = tru [i];
					int index = rev.IndexOf (let);
					if (index < 0) {
						state = false;
						break;
					} else {
						rev = rev.Remove (index, 1);
						i++;
					}
				} else {
					if (rev != "") {
						state = false;
					}
					break;
				}
			}
			Console.WriteLine (state);
		}
	}
}
