public class MajorElement {
    public static void main(String[] args) throws IOException
    {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null)
        {
            line = line.trim();
            String[] data = line.split(",");
            Integer len = data.length;
            HashMap<String,Integer> lista = new HashMap<String,Integer>();
            for (int i = 0; i < data.length; i++) {
                if (lista.containsKey(data[i]))
                {
                    lista.put(data[i], lista.get(data[i])+1);
                } else {
                    lista.put(data[i], 1);
                }
            }

            Integer majorValue = 0;
            String majorKey = "";
            for (Map.Entry<String,Integer> entry : lista.entrySet())
            {
                Integer value = entry.getValue();
                String key = entry.getKey();
                if (value > majorValue)
                {
                    majorValue = value;
                    majorKey = key;
                }
            }

            if (majorKey > len/2)
            {
                System.out.println(majorKey);
            } else {
                System.out.println("None");
            }
            
        }
    }
}
