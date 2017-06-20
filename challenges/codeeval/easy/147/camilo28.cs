using System.IO;
using System.Collections.Generic;


class Program
{
    static void Main(string[] args)
	{	
		var letter = new List<char>();
		for (var i = 97; i < 123; i++) {
			letter.Add ((char)i);
		}
        using (StreamReader reader = File.OpenText("/home/camilo/test_22"))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
				int con = 0; 
				for (var i = 0; i < line.Length; i++) {
					if(letter.Contains(line[i])){
						con += 1;
					
        }

    }	
				float lower = ((float)con / (float)line.Length) * 100;
				float upper = 100 - lower;
				System.Console.WriteLine ("lowercase: " + System.Math.Round(lower,2) + " " +"uppercase: " + System.Math.Round(upper,2));
}
}
}
