import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] values = line.split(";");
			int ndays = Integer.parseInt(values[0]);
			String[] daysstr =  values[1].split(" ");
			int[] days = new int[daysstr.length];
			for(int i=0;i<daysstr.length;i++){
				days[i] = Integer.parseInt(daysstr[i]);
			}
			int maxsum = 0;
			for(int i=0;i<days.length;i++){
				if ((i+ndays-1) >= days.length)
					break;
				int tempsum = 0;
				for (int j=i;j<ndays+i;j++){
					tempsum+=days[j];
				}
				if (tempsum > maxsum)
					maxsum = tempsum;
			}
			System.out.println(maxsum);
		}
	}
}
