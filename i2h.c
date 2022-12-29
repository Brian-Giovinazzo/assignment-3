#include <stdlib.h>
#include <stdio.h>
#define N 8

int main(int argc, char *argv[]) {
  unsigned int n = atoi(argv[1]); 
  
  printf("%08X\n",n);
  return 0;
}
