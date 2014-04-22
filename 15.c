#include <stdio.h>

void check_path(int, int);

unsigned long long paths;

int main(){
  check_path(0, 0);
  printf("Number of paths is: %llu\n", paths);
  return 0;
}

void check_path(int x, int y){
//  printf("Checking: %d %d\n", x, y);
  if(x!=20) check_path(x+1, y);
  if(y!=20) check_path(x, y+1);
  if(x==20 && y==20) paths++;
}
