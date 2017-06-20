   public static class MorseCode{
        public static void logic(String line){
            String nline = "";
            String[] data = line.split(" ");
            for (int i = 0; i < data.length; i++) {
                nline += translate(String.valueOf(data[i]));
            }
            System.out.println(nline.toUpperCase());
        }
        public static String translate(String let){
            String[] alpha = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
            "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
            "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8",
            "9", "0", " " };
            String[] dottie = { ".-", "-...", "-.-.", "-..", ".", "..-.", "--.",
                    "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.",
                    "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-",
                    "-.--", "--..", ".----", "..---", "...--", "....-", ".....",
                    "-....", "--...", "---..", "----.", "-----", " " };
            
            String aux = " ";
            for (int i = 0; i < alpha.length; i++) {
                if(dottie[i].equals(let)){
                    aux = alpha[i];
                    break;
                }
            }
            return aux;
        }
    }
