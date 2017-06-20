   public static class WriterName{
        public static void logic(String line){
            String[] v = line.split("");
            String nline = "";
            String nlett = "";
            boolean add = false;
            for (int i = 0; i <  v.length; i++) {
                if (v[i].equals("|")) {
                    add = true;
                }else if(add == true){
                    nline += v[i];
                }else if(add == false){
                    nlett += v[i];
                }
            }
            String[] x = nline.split(" ");
            x[0] = "-1";
            String txt = "";
            for (int i = 1; i < x.length; i++) {
                txt+= nlett.charAt(Integer.valueOf(x[i])-1);
            }
            System.out.println(txt);
        }
    }
