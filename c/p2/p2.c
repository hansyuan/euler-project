#import <stdio.h>
int main(){
	printf("Fibonacci algorithm \n");
	int first = 1, second = 2;
	int sum = 3;

	int total = 2;

	while (sum < 4000000) {
		first = second;
		second = sum;
		sum = first + second;

		if (sum % 2 == 0) {
			printf("%d, ", sum);
			total += sum;
		}
		
	}

	printf("\n%d\n", total);
}