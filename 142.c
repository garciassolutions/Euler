#include <math.h>
#include <stdio.h>

int main(){
  unsigned long long x, y, z;
  for(x=3;;x++)
    for(y=2;y<x;y++)
      for(z=1;z<y;z++)
        if(sqrt(x+y) == (int)sqrt(x+y) && sqrt(x-y) == (int)sqrt(x-y) && sqrt(x+z) == (int)sqrt(x+z) && sqrt(x-z) == (int)sqrt(x-z) && sqrt(y+z) == (int)sqrt(y+z) && sqrt(y-z) == (int)sqrt(y-z)){
          printf("Sum is: %llu\n", x+y+z);
          return 0;
        }
}
