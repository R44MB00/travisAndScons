class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            string[] data = line.Split(' ');
            string number = data[0];
            string text = data[1];
            string n1 = "";
            string n2 = "";
            string ope = "";
            int hasSignal = 0;
            for (int i = 0; i < text.Length; i++)
            {
                if (text[i] == '+')
                {
                    hasSignal = 1;
                    ope = "sum";
                    continue;                   
                } 

                if (text[i] == '-') {
                    hasSignal = 1;
                    ope = "res";
                    continue;                   
                }

                if (hasSignal == 0) 
                {
                    n1 += number[i];
                } else {
                    n2 += number[i];
                }
            }
            Console.WriteLine(process(Convert.ToInt32(n1), Convert.ToInt32(n2), ope));
        }
    }

    static int process(int a, int b, string ope)
    {
        if (ope.Equals("sum")) {
            return a + b;
        }

        return a - b;
    }
}
