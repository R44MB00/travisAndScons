   public static class HexToDecimal{
        public static void convert(String line){
            String[] digits = line.split("");
            int exp = digits.length-2;
            double total = 0;
            for (int i = 1; i < digits.length; i++) {
                total = total + checkDigit(digits[i])*Math.pow(16, exp);
                exp--;
            }
            System.out.println((int)total);
        }
        public static int checkDigit(String dig){
            if(dig.matches("^[0-9]{1}$") == true){
                return Integer.parseInt(dig);
            }else{
                switch(dig){
                    case "a":
                        return 10;
                    case "b":
                        return 11;
                    case "c":
                        return 12;
                    case "d":
                        return 13;
                    case "e":
                        return 14;
                    case "f":
                        return 15;
                    default:
                        return 0;
                }
            }
        }
    }
