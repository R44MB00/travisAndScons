import java.util.HashSet;
public final class Main {
private static HashSet<Integer> arrayOfPrimes = new HashSet<Integer>();
    private Main() {
        arrayOfPrimes = null;
    }
    public static void main(final String[] args) {
        arrayOfPrimes.add(2);
        int countOfPrimes = 1;
        final int number = 3;
        final int total = 1000;
        int sum = 2;
        while (countOfPrimes < total) {
            if (isPrime(number)) {
            arrayOfPrimes.add(number);
            sum += number;
            countOfPrimes++;
        }
        number += 2;
        }
        System.out.println(sum);
        }
    private static boolean isPrime(final int num) {
        for (Integer prime : arrayOfPrimes) {
        if (num % prime == 0) { return false; }
        }
        return true;
    }
}
