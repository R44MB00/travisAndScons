public class CompressedSequence {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] numbers = line.split(" ");
            String last = "";
            Integer times = 0;
            for (int i = 0; i < numbers.length; i++) {
                String actual = numbers[i];

                if (i == 0) {
                    last = actual;
                    times = 1;
                    continue;
                }

                if (last.equals(actual)) {
                    times = times + 1;
                    last = actual;
                } else {
                    System.out.printf("%d %s ", times, last);
                    last = actual;
                    times = 1;
                }

                if (numbers.length -1 == i) {
                    System.out.printf("%d %s", times, last);
                }
            }

            System.out.println("");
        }
    }
}
