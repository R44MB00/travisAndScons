public class Main
{
    public static void main (String[] args)
    {
        int sum = 0;
        int sumPrim = 0;
        int nume = 2;

        while (sumPrim < 1000) {
            if (primo(nume)) {
                sum += nume;
                sumPrim++;
            }

            nume++;
        }

        System.out.println(sum);
    }

    public static boolean primo(int n)
    {
        int root = (int) Math.sqrt(n);

        for (int i = 2; i <= root; i++) {
            if (n % i == 0) {
                return false;
            }
        }

        return true;
    }
}
