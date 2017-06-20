public class MultiplyLists {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;

        while ((line = buffer.readLine()) != null) {
            line = line.trim();

            String[] list = line.split("|");
            String[] element1 = list[0].split(" ");
            String[] element2 = list[1].split(" ");

            for (int i=0; i < element1.length; i++) {
                int result = Integer.parseInt(element1[i]) * Integer.parseInt(element2[i]);
                System.out.print(Integer.toString(result) + " ");
            }

            System.out.println();
        }
    }
}
