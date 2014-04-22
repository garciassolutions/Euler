#include <stdio.h>

int main(){
  long long unsigned smallest = 2520;
  int x, y;
  int done = 0;
  while(!done){
    smallest++;
    y=0;
    for(x=1;x<21 && !y;x++)
      if(smallest%x) y++;
    if(!y) done++;
  }
  printf("Smallest value is: %llu\n", smallest);
  return 0; 
}
