
#include <stdio.h>

// Write a program that takes an array of numbers
//  (with both zero and non-zero values)
//  from the user (or declare ) and displays the total no. 
//  of all zero values from the array

//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int p1 ,int *p2);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int arry[] = {1,0,0,0,1,0,1,0};
    int tot = 0;
    printf("assembly proc calling from  from C! \n");
getch();
    
    
    asmfunc(arry,& tot);
   
    getch();
    
    
    printf("\nTotal no of zero's are:  %d\n",tot);        // printing in c
    
  
    
    return 0;
}