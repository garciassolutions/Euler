#include <stdio.h>

int matrix[640];

int main(){
  FILE *input = NULL;
  input=fopen("matrix.txt", "rb+");
  
  if(!input){
    fprintf(stderr, "There was an error opening the file\n");
    return -1;
  }
  
  
  
  close(input);
  return 0;
}
