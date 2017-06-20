#include <stdio.h>
int main(void) {
	int x,y,solve;
	for (x=1; x <=12 ; x++){
		printf("%d", x);
		for (y=2; y<=12 ; y++){
			solve = x*y;
			if (solve >= 10 ){
				if (solve >= 100){
					printf(" %d",solve);
				}
				else{
					printf("  %d",solve);
				}
			}
			else {
				printf("   %d",solve);
			}
		}
		printf("\n");
	}
}