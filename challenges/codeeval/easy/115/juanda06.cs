using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
 
class Program
{
 
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();
        List<string> words = new List<string>();
        List<string> digits = new List<string>();
        List<string> results = new List<string>();
        char[] separator = new char[] { ',' };
        string line = "", result = "", removeDigitsFromLine = "", removeTextFromLine = "";
        Regex removeDigits = new Regex(@"[\d-]");
        Regex removeText = new Regex("[^.0-9]");
 
        using (reader)
        {
            line = reader.ReadLine();
 
            while (line != null)
            {
                lines.Add(line);
                line = reader.ReadLine();
            }
        }
 
        int length = lines.Count;
 
        for (int i = 0; i < length; i++)
        {
            line = lines[i];
 
            if (CheckWords(line))
            {
                removeDigitsFromLine = Regex.Replace(line, @"[\d-]", String.Empty);
                words = removeDigitsFromLine.Split(separator, StringSplitOptions.RemoveEmptyEntries).ToList();
            }
            else
            {
                words = new List<string>();
            }
            if (CheckDigits(line))
            {
                removeTextFromLine = removeText.Replace(line, ",");
                digits = removeTextFromLine.Split(separator, StringSplitOptions.RemoveEmptyEntries).ToList();
            }
            else
            {
                digits = new List<string>();
            }
 
            result = Separate(words, digits);
            results.Add(result);
        }
 
        foreach (var item in results)
        {
            Console.WriteLine(item);
        }
    }
 
    public static string Separate(List<string> words, List<string> digits)
    {
        string result = "", resultWords = "", resultDigits = "";
 
        int wordsLength = words.Count;
        int digitsLength = digits.Count;
 
        if (wordsLength != 0)
        {
            for (int i = 0; i < wordsLength - 1; i++)
            {
                resultWords += words[i] + ",";
            }
            resultWords += words[wordsLength - 1];
        }
        if (digitsLength != 0)
        {
            for (int i = 0; i < digitsLength - 1; i++)
            {
                resultDigits += digits[i] + ",";
            }
            resultDigits += digits[digitsLength - 1];
        }
 
        if(resultWords != "" && resultDigits != "")
        {
            result = resultWords + "|" + resultDigits;
        }
        else if(resultWords == "")
        {
            result = resultDigits;
        }
        else if(resultDigits == "")
        {
            result = resultWords;
        }
        else
        {
            result = "";
        }
        return result;
    }
 
    public static bool CheckDigits(string line)
    {
        int length = line.Length;
 
        for (int i = 0; i < length; i++)
        {
            if(Char.IsDigit(line[i]))
            {
                return true;
            }
        }
 
        return false;
    }
 
    public static bool CheckWords(string line)
    {
        int length = line.Length;
 
        for (int i = 0; i < length; i++)
        {
            if(Char.IsLetter(line[i]))
            {
                return true;
            }
        }
 
        return false;
    }
}
