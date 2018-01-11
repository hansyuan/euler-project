#import <stdio.h>
#import "p1.h"


int sum_all_multiples_except_exclude(int max, int multiple, int exclude){
	// Starting at 1, determine whether x <-[1..max] is a multiple of 3. 
	int current, sum;

	sum = 0;
	for (current = 1; current < max; current++){
		if ( ((current % multiple) == 0) && 
			 ((current % exclude)  != 0) ) {
			// printf("%d, ", current);
			sum += current;
		}
	}

	// printf("\n");
	return sum;

	
}

int all_fives_without_threes(int max) {

	return 0;
}

int main(){
	int sum = 0;
	printf("Hello world! \n");

	// Mod by 1 results in its own number
	printf("Run 1. \n");
	sum += sum_all_multiples_except_exclude(1000, 3, 999999999);
	// printf("%d\n", sum);

	printf("Run 2. \n");
	sum += sum_all_multiples_except_exclude(1000, 5, 3);
	printf("%d\n", sum);

}