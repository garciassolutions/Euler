#include <stdio.h>

int main(){
  unsigned int greatest, largest, x, y, z;
  largest = greatest = 0;
  for(x=1;x<1000000;x++){
    y=x;
    while(y!=1){
      if(!(y%2)) y/=2;
      else{
        y*=3;
        y++;
      }
      z++;
    }
    if(z>greatest){
      greatest = z;
      largest = x;
    }
    z ^= z;
  }
  printf("The greatest sequence belongs to: %u with a chain of %u\n", largest, greatest);
  return 0;
}
