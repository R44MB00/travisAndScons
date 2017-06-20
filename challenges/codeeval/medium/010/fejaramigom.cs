using System;
using System.Linq;

namespace CodeevalChallenges
{
    public class _10_MthLastElement
    {
        public _10_MthLastElement(string text)
        {
            letters = text.Split(' ');
            index = Convert.ToInt32(letters.LastOrDefault())-1;
            letters = letters.Take(letters.Length - 1).ToArray();
            if (index > letters.Length - 1)
            {
                throw new IndiceIncorrectoExecption("Índice incorrecto");
            }
        }

        public string[] letters { get; private set; }
        public int index { get; private set; }

        public string getMthElement()
        {
            Array.Reverse(letters);
            return letters[index];
        }
    }

    public class IndiceIncorrectoExecption : Exception
    {
        public IndiceIncorrectoExecption(string mensaje)
        {
            this.mensaje = mensaje;
        }

        public string mensaje { get; private set; }
    }
}


