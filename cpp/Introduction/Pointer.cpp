#include <iostream>
#include <cmath>

int change(int *a,int *b){
    int a1(*a);
    int b1(*b);
    *a = a1 + b1;
    *b = std::abs(a1-b1);
    return 0;
}

int main(){
    
    int n1;
    int n2;
