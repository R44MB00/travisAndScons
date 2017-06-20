using System;

namespace CodeevalChallenges
{
    public class _8_ReverseWords
    {
        public _8_ReverseWords(string text)
        {
            this.text = text;
            words = text.Split(' ');
        }

        public string text { get; private set; }
        public string[] words { get; private set; }

        public string ReverseWords()
        {
            Array.Reverse(words);
            return String.Join(" ", words);
        }
    }
}
