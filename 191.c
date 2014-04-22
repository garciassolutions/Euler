#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void bump(char *);

int total;

int main(){
  char opt[] = {'A', 'L', 'O'};
  char prize[17];
  int i;
  int count = 0;
  
  for(i=0;i<16;i++) prize[i] = opt[2];
  prize[16] = 0;
  
  for(;;){
    if(!(strstr(prize, "AAA") || strstr(prize, "LL")) total++;
    bump(prize);
  }
  
  return 0;
}

void bump(char *p){
  short int x = strlen(p)-1;
  for(;x>0;x--)
    if(p[x] == 'A'){
      p[x] = 'O';
      bump(&p[x-1]);
      break;
    }
    else if(p[x] == 'L'){
      p[x] = 'A';
      break;
    }
    else if(p[x] == 'O'){
      p[x] = 'L';
      break;
    }
  if(x==0){
    printf("Total is: %d\n", total);
    exit(0);
  }
}
