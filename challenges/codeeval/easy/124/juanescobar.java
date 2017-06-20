public class RoadTrip {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        Integer first_distance = 0;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] cities = line.split(";");
            List<Integer> distances = new ArrayList<Integer>();
            distances.add(0);
            for (int i = 0; i < cities.length; i++) {
                Integer distance = Integer.parseInt(cities[i].split(","));
                distances.add(distance);
            }
            Collections.sort(distances);

            String separator = "";
            for (int i = 0; i < distances.size(); i++) {
                System.out.print(distances.get(i + 1) - distances.get(i));
            }
        }
    }
}
