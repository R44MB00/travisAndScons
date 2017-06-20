   public static class Happy{
        public static void logic(String line){
            boolean resp = false;
            int number = 0;
            int limit = Integer.valueOf(line);
            int it = 0;
            while(true){
                number = convert(line);
                if(number == limit){
                    resp = false;
                    break;
                }else if(number == 1){
                    resp = true;
                    break;
                }else{
                    it++;
                    if(it>15){
                        resp = false;
                        break;
                    }
                    line = String.valueOf(number);
                } 
            }
            if(resp == true){
                System.out.println("1");
            }else{
                System.out.println("0");
            }
        }
        public static int convert(String s){
            String[] digits =  s.trim().split("");
            int number = 0;
            for (int i = 1; i < digits.length; i++) {
                number+= Math.pow(Integer.parseInt(digits[i]),2);
            }
            return number;
        }
    }
}
