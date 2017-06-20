using System;
using System.IO;
using System.Linq;

public class CodeEval
{
    public static void Main(string[] args)
    {
        if (args.Length != 1) return;

        using (var reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            var line = reader.ReadLine();
            if (line == null) continue;

            Console.WriteLine(GetBeauty(line));
        }
    }

    public static int GetBeauty(string text)
    {
        text = text.ToLower();
        var weights = Enumerable.Range(1, 26).Select(x => 0).ToArray();
        foreach (var c in text)
        {
            var index = c - 'a';
            if (index < 0 || index > 25) continue;
            weights[index]++;
        }

        var rank = 26;
        return weights
            .OrderByDescending(x => x)
            .Select(x =>  x * rank--)
            .Sum(x => x);
    }
}
