
namespace CodeevalChallenges
{
    public class _20_Lowercase
    {
        public _20_Lowercase(string text)
        {
            this.Text = text;
        }

        public string Text { get; private set; }
        public string GetLowerText()
        {
            return Text.ToLower();
        }
    }
}
