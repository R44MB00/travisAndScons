/*http://www.hacker.org/challenge/chal.php?id=15*/


/* package whatever; // don't place package name! */

import java.util.*;
import java.lang.*;
import java.io.*;

/* Name of the class has to be "Main" only if the class is public. */
class Ideone
{
	
	public static int bucketFromRandom(int randomNumber) {
	int a[]	= new int[10];
	for (int i = 0; i < a.length; i++)
		a[i] = i * randomNumber;
	int index = Math.abs(randomNumber) % a.length;
	return a[index];
}

	public static void main(String[] args) {
		for (int i = Integer.MIN_VALUE; i <= Integer.MAX_VALUE; i++) {
			try{
		bucketFromRandom(i);	
			} catch(Exception e) {
		System.out.println(i);			
			}
		}
		
	}
}
