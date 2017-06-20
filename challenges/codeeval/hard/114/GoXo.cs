using System.IO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class PackageProblem
{
    static Dictionary<int, double> weight = new Dictionary<int, double>();
    static Dictionary<int, double> price = new Dictionary<int, double>();
    static ArrayList answer = new ArrayList();
    static string temp = "";
    static double max_weight = 0.0;
    static double curr_weight = 0.0;

    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {

            string line = reader.ReadLine();

            Regex pattern = new Regex("[$()]");
            line = pattern.Replace(line, "");
            double max_Price = 0.0;
            string res = "-";
            string[] parts = line.Split(' ');
            max_weight = Convert.ToDouble(parts[0]);
            parsePaks(parts, max_weight);
            recurPaks(1,parts.Length -2);

            foreach(string id in answer)
            {
                double curr_Price = 0.0;
                string item = id.Remove(id.Length - 1);

                foreach (string c in item.Split(','))
                {
                    curr_Price += price[Int32.Parse(c)];
                }

               if (curr_Price == max_Price)
                {

                    double item_Weight= 0.0;
                    double res_Weight = 0.0;

                    foreach (string c in item.Split(','))
                    {
                        item_Weight += weight[Int32.Parse(c)];
                    }

                    foreach (string c in res.Split(','))
                    {
                        res_Weight += weight[Int32.Parse(c)];
                    }

                    if (item_Weight < res_Weight) res = item;
                }

                if (curr_Price > max_Price)
                {
                    max_Price = curr_Price;
                    res = item;
                }
            }

            Console.WriteLine(res);

            temp = "";
            weight.Clear();
            price.Clear();
            answer.Clear();
            max_weight = 0.0;
            curr_weight = 0.0;
        }
    }

    static void recurPaks(int k, int len){

        if (k > len) return;

        for (int i = k; k <= len; i++){

             if (i > len) return;
             if (weight.ContainsKey(i)) curr_weight += weight[i];
             else continue;

             if (curr_weight < max_weight)
             {

                temp += i.ToString()+ ",";
                if (!answer.Contains(temp)) answer.Add(temp);
                recurPaks(++i,len);

             }else{
                curr_weight -= weight[i];
                continue;
             }
             i--;
             temp = temp.Remove(temp.Length - i.ToString().Length - 1);
             curr_weight -= weight[i];
        }
        return;
    }

    static void parsePaks(string[] paks, double max_w)
    {
        for (int i = 2; i < paks.Length; i++)
        {
            if (getW(paks[i]) < max_w)
            {
                weight.Add(getIdx(paks[i]),getW(paks[i]));
                price.Add(getIdx(paks[i]),getP(paks[i]));
            }
        }
    }

    static int getIdx(string pak){ return Int32.Parse(pak.Split(',')[0]); }
    static double getW(string pak){ return Convert.ToDouble(pak.Split(',')[1]);}
    static double getP(string pak){ return Convert.ToDouble(pak.Split(',')[2]);}

}
