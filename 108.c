#include <stdio.h>

#define SET_SIZE 50000

int main(){
  float set[SET_SIZE];
  int solutions = 0;
  int x, y, j;
  for(x=0;x<SET_SIZE;x++) set[x] = 1.0/(x+1);
  for(j=2000;j<SET_SIZE;j++){
    for(x=0;x<SET_SIZE;x++)
      for(y=0;y<SET_SIZE;y++)
        if(set[x]+set[y] == set[j]) solutions++;
    if(solutions >= 1000){
      printf("Solution is: %d\n", j+1);
      return 0;
    }
    solutions^=solutions;
  }
  return 0;
}
