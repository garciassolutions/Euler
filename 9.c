#include <stdio.h>

int main(){
  int a, c, b;
  
  for(a=2;a<=1000;a++){
    for(b=2;b<1000;b++){
      for(c=2;c<1000;c++){
        if(((a+b+c) == 1000) && ((a*a)+(b*b)==(c*c))){
          printf("The products are: %d %d %d\n", a, b, c);
        }
      }
    }
  }
  return 0;
}
