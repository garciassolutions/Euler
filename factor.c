#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv){
//  if(argc != 2){
//    fprintf(stderr, "Usage is: %s [number]\n", argv[0]);
//    return -1;
//  }
  unsigned long long num = 600851475143;
  unsigned int fact[num]; // We wont have this many factors. But it'd be nice to have?
  unsigned long long i, x;
  for(i=0;i<num;i++) fact[num] = 0;
  for(i=2;i<num;i++){
    if(!(num%i)){
      fact[i-1]++;
      num/=i;
    }
  }
  for(i=num;i>0;i--)
    if(fact[i-1])
//      for(x=0;x<sizeof(primes);x++)
//        if(primes[x] == fact[i-1]){
          printf("Try: %u\n", fact[i-1]);
          //i=0;
//        }
//  }
  return 0;
}
