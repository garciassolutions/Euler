#include <stdio.h>

int main(){
  unsigned int start = 1;
  unsigned int x, i, y = 2;
  for(x=0;x<500;x++){
    for(i=0;i<4;i++) printf("%d + ", (start+=y));
    y += 2;
  }
  puts("1");
  return 0;
}
