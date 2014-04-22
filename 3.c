#include <stdio.h>

void find_primes(long long unsigned);

int main(){
  find_primes(600851475143);
  return 0;
}

void find_primes(long long unsigned num){
  long long unsigned largest = 0;
  long long unsigned x, y;
  for(x=2;x<100000000;x++){
    int done = 0;
    for(y=2;y<x;y++)
      if(y!=x && !(x%y)){
        done=1;
        break;
      }
    if(!done && !(num%x)) largest = x;
  }
  printf("Largest value is: %llu\n", largest);
}
