  public static class DataRecovery{
        public static void logic(String line){
            String[] pieces = line.split(";");
            String[] text = pieces[0].split(" ");
            String[] nums = pieces[1].split(" ");
            String aux = "";
            String num = "";
            for (int i = 0; i < nums.length - 1; i++) {
                for (int j = i+1; j < nums.length; j++) {
                    if (Integer.parseInt(nums[i]) > Integer.parseInt(nums[j])) {
                        aux = text[i];
                        text[i] = text[j];
                        text[j] = aux;
                        num = nums[i];
                        nums[i] = nums[j];
                        nums[j] = num;
                    }
                }
            }
            aux = "";
            for (int i = 0; i < text.length; i++) {
                aux += text[i] + " ";
            }
            System.out.println(aux);
        }
        
    }
