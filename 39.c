#include <stdio.h>

int main(){
  int a, b, c, p, sums;
  int max_num = 0, max_sums = 0;
  for(p=10;p<=1000;p++){
    sums = 0;
    for(c=2;c<p;c++)
      for(b=1;b<c;b++)
        for(a=1;a<c;a++)
          if((a+b+c) == p && ((a*a)+(b*b)) == (c*c)) sums++;
    if(sums > max_sums){
      max_num = p;
      max_sums = sums;
    }
  }
  printf("Max sums was reached when p = %d\n", max_num);
}
