
using System.IO;
using System.Collections.Generic;

class Program
{
    public static int chartoint(char col)
        {
            int value = 0;
            if(col == 'a')
            {
                value = 1;
            }else if (col == 'b')
            {
                value = 2;
            }else if(col == 'c')
            {
                value = 3;
            }else if(col == 'd')
            {
                value = 4;
            }else if(col == 'e')
            {
                value = 5;
            }else if(col == 'f')
            {
                value = 6;
            }else if(col == 'g')
            {
                value = 7;
            }else if(col == 'h')
            {
                value = 8;
            }
            return value;
        }
        public static char inttochar(int col)
        {
            char value = 'x';
            if (col == 1)
            {
                value = 'a';
            }
            else if (col == 2)
            {
                value = 'b';
            }
            else if (col == 3)
            {
                value = 'c';
            }
            else if (col == 4)
            {
                value = 'd';
            }
            else if (col == 5)
            {
                value = 'e';
            }
            else if (col == 6)
            {
                value = 'f';
            }
            else if (col == 7)
            {
                value = 'g';
            }
            else if (col == 8)
            {
                value = 'h';
            }
            return value;
        }
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
            while (!reader.EndOfStream)
            {
                string line = reader.ReadLine();
                if (null == line)
                    continue;
                int fila = int.Parse(line[1].ToString());
                int columna = chartoint(line[0]);

                int fila1 = fila - 1;
                int columna1 = columna - 2;
                int fila2 = fila + 1;
                int columna2 = columna - 2;
                int fila3 = fila - 2;
                int columna3 = columna - 1;
                int fila4 = fila + 2;
                int columna4 = columna - 1;
                int fila5 = fila - 2;
                int columna5 = columna + 1;
                int fila6 = fila + 2;
                int columna6 = columna + 1;
                int fila7 = fila - 1;
                int columna7 = columna + 2;
                int fila8 = fila + 1;
                int columna8 = columna + 2;

                string cadena = "";

                if(fila1<=8 & fila1>=1 & columna1<=8 & columna1 >= 1)
                {
                    cadena = cadena + inttochar(columna1) + fila1 + " ";
                }
                if (fila2 <= 8 & fila2 >= 1 & columna2 <= 8 & columna2 >= 1)
                {
                    cadena = cadena + inttochar(columna2) + fila2 + " ";
                }
                if(fila3 <= 8 & fila3 >= 1 & columna3 <= 8 & columna3 >= 1)
                {
                    cadena = cadena + inttochar(columna3) + fila3 + " ";
                }
                if(fila4 <= 8 & fila4 >= 1 & columna4 <= 8 & columna4 >= 1)
                {
                    cadena = cadena + inttochar(columna4) + fila4 + " ";
                }
                if(fila5 <= 8 & fila5 >= 1 & columna5 <= 8 & columna5 >= 1)
                {
                    cadena = cadena + inttochar(columna5) + fila5 + " ";
                }
                if(fila6 <= 8 & fila6 >= 1 & columna6 <= 8 & columna6 >= 1)
                {
                    cadena = cadena + inttochar(columna6) + fila6 + " ";
                }
                if(fila7 <= 8 & fila7 >= 1 & columna7 <= 8 & columna7 >= 1)
                {
                    cadena = cadena + inttochar(columna7) + fila7 + " ";
                }
                if(fila8 <= 8 & fila8 >= 1 & columna8 <= 8 & columna8 >= 1)
                {
                    cadena = cadena + inttochar(columna8) + fila8 + " ";
                }

                System.Console.WriteLine(cadena.Trim());
            }
    }
}
