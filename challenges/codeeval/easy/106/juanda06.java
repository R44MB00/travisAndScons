import java.io.*;


public class Main
{
    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        while ((line = in.readLine()) != null) {
            System.out.println(integerToRomanNumeral(Integer.parseInt(line.trim())));
        }

        in.close();
    }

    public static String integerToRomanNumeral(int n)
    {
        int thousands = n/1000;
        n %= 1000;
        int hundreds = n/100;
        n %= 100;
        int tens = n/10;
        n %= 10;
        int ones = n;

        StringBuilder sb = new StringBuilder();

        sb.append(thousandsToRomanNumeral(thousands));
        sb.append(hundredsToRomanNumeral(hundreds));
        sb.append(tensToRomanNumeral(tens));
        sb.append(onesToRomanNumeral(ones));

        return sb.toString();
    }

   
    private static String thousandsToRomanNumeral(int thousands)
    {
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < thousands; i++) {
            sb.append("M");
        }

        return sb.toString();
    }

    
    private static String hundredsToRomanNumeral(int hundreds)
    {
        switch (hundreds) {
            case 0:
                return "";
            case 1:
                return "C";
            case 2:
                return "CC";
            case 3:
                return "CCC";
            case 4:
                return "CD";
            case 5:
                return "D";
            case 6:
                return "DC";
            case 7:
                return "DCC";
            case 8:
                return "DCCC";
            case 9:
                return "CM";
        }

        throw new IllegalArgumentException();
    }

   
    private static String tensToRomanNumeral(int tens)
    {
        switch (tens) {
            case 0:
                return "";
            case 1:
                return "X";
            case 2:
                return "XX";
            case 3:
                return "XXX";
            case 4:
                return "XL";
            case 5:
                return "L";
            case 6:
                return "LX";
            case 7:
                return "LXX";
            case 8:
                return "LXXX";
            case 9:
                return "XC";
        }

        throw new IllegalArgumentException();
    }

   
    private static String onesToRomanNumeral(int ones)
    {
        switch (ones) {
            case 0:
                return "";
            case 1:
                return "I";
            case 2:
                return "II";
            case 3:
                return "III";
            case 4:
                return "IV";
            case 5:
                return "V";
            case 6:
                return "VI";
            case 7:
                return "VII";
            case 8:
                return "VIII";
            case 9:
                return "IX";
        }

        throw new IllegalArgumentException();
    }
}
