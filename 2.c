#include <stdio.h>

int main(){
  long long unsigned sum;
  long long unsigned a, b;
  a=1;
  sum = b = 2;
  for(;b<4000000;){
    long long unsigned tmp = a;
    a=b;
    b+=tmp;
    if(!(b%2)) sum += b;
  }
  printf("Sum is: %llu\n", sum);
  return 0;
}

