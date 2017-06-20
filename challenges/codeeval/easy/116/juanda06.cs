using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
 
class Program
{
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();
        List<string> splitLine = new List<string>();
        List<string> results = new List<string>();
        string result = "", line = "";
        char[] separator = new char[] { ' ' };
 
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
            line = lines[i].Replace("  ", " SPACE ");
            splitLine = line.Split(separator, StringSplitOptions.RemoveEmptyEntries).ToList();
            result = MorseToString(splitLine);
            results.Add(result);
        }
 
        foreach (var item in results)
        {
            Console.WriteLine(item);
        }
    }
 
    public static string MorseToString(List<string> splitLine)
    {
        string result = "", symbol = "", morseSymbol = "";
        int index = 0, length = splitLine.Count;
 
        while (length-- > 0)
        {
            morseSymbol = splitLine[index];
 
            switch (morseSymbol)
            {
                case ".-":
                    symbol = "A";
                    break;
                case "-...":
                    symbol = "B";
                    break;
                case "-.-.":
                    symbol = "C";
                    break;
                case "-..":
                    symbol = "D";
                    break;
                case ".":
                    symbol = "E";
                    break;
                case "..-.":
                    symbol = "F";
                    break;
                case "--.":
                    symbol = "G";
                    break;
                case "....":
                    symbol = "H";
                    break;
                case "..":
                    symbol = "I";
                    break;
                case ".---":
                    symbol = "J";
                    break;
                case "-.-":
                    symbol = "K";
                    break;
                case ".-..":
                    symbol = "L";
                    break;
                case "--":
                    symbol = "M";
                    break;
                case "-.":
                    symbol = "N";
                    break;
                case "---":
                    symbol = "O";
                    break;
                case ".--.":
                    symbol = "P";
                    break;
                case "--.-":
                    symbol = "Q";
                    break;
                case ".-.":
                    symbol = "R";
                    break;
                case "...":
                    symbol = "S";
                    break;
                case "-":
                    symbol = "T";
                    break;
                case "..-":
                    symbol = "U";
                    break;
                case "...-":
                    symbol = "V";
                    break;
                case ".--":
                    symbol = "W";
                    break;
                case "-..-":
                    symbol = "X";
                    break;
                case "-.--":
                    symbol = "Y";
                    break;
                case "--..":
                    symbol = "Z";
                    break;
                case ".-.-.-":
                    symbol = ".";
                    break;
                case "--..--":
                    symbol = ",";
                    break;
                case "..--..":
                    symbol = "?";
                    break;
                case "-..-.":
                    symbol = "/";
                    break;
                case ".--.-.":
                    symbol = "@";
                    break;
                case ".----":
                    symbol = "1";
                    break;
                case "..---":
                    symbol = "2";
                    break;
                case "...--":
                    symbol = "3";
                    break;
                case "....-":
                    symbol = "4";
                    break;
                case ".....":
                    symbol = "5";
                    break;
                case "-....":
                    symbol = "6";
                    break;
                case "--...":
                    symbol = "7";
                    break;
                case "---..":
                    symbol = "8";
                    break;
                case "----.":
                    symbol = "9";
                    break;
                case "-----":
                    symbol = "0";
                    break;
                case "SPACE":
                    symbol = " ";
                    break;
            }
 
            result += symbol;
 
            index++;
        }
 
        return result;
    }
}
