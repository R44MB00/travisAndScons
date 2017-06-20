public static void ConvertToMinSec(string path)
        {
            using (StreamReader reader = File.OpenText(path))
            {


                while (!reader.EndOfStream)
                {
                    var degreeValues = reader.ReadLine();
                    if (!string.IsNullOrWhiteSpace(degreeValues))
                    {
                        var totalVal = degreeValues.Split('.');
                        if (totalVal.Length == 1)
                        {
                            var temp = totalVal[0] + ".0";
                            totalVal = temp.Split('.');
                        }
                        var intPart = totalVal[0];
                        var decimalPart =  "0." + totalVal[1];
                        decimal minutes;
                        decimal.TryParse(decimalPart, out minutes);

                        minutes = decimal.Multiply(minutes, 60);
                        var minutePart = (int)minutes;
                        var remainingDecimal = minutes.ToString().Split('.');
                        if (remainingDecimal.Length == 1)
                        {
                            var tempDecimal = remainingDecimal[0] + ".0";
                            remainingDecimal = tempDecimal.Split('.');
                        }


                        decimal seconds;
                        decimal.TryParse("0." + remainingDecimal[1], out seconds);
                        seconds = seconds*60;
                        var secondsPart = (int) seconds;
                        var report = string.Format("{0}"+"."+"{1:00}"+"'"+"{2:00}"+'"', intPart,
                            minutePart, secondsPart);

                        Console.WriteLine(report);
                    }
                }
            }
