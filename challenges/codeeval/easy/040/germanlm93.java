  public static class DescribingNumbers{
        public static void check(String line){
            String[] digits = line.split("");
            int waited = 0;
            int position = 0;
            int count = 0;
            boolean resp = true;
            for (int i = 1; i < digits.length; i++) {
                position = i-1;
                waited = Integer.valueOf(String.valueOf(line.charAt(position)));
                count = counter(line,position);
                if(count != waited){
                    resp = false;
                    break;
                }
            }
            if (resp) {
                System.out.println("1");
            }else{
                System.out.println("0");
            }
        }
        public static int counter(String line,int d){
            int counter = 0;
            for (int i = 0; i < line.length(); i++) {
                if(String.valueOf(line.charAt(i)).equals(String.valueOf(d))){
                    counter ++;
                }
            }
            return counter;
        }
    }
