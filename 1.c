#include <stdio.h>

int main(){
  unsigned int i;
  unsigned int x = 0;
  for(i=1;i<1000;i++)
    if((!(i%3)) || (!(i%5))) x += i;
  printf("Sum is: %u\n", x);
  return 0;
}
