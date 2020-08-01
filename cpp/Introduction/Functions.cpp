#include <iostream>
#include <vector>
#include <bits/stdc++.h> 

int maxi(std::vector<int> vec){
    int maxi;
    maxi = *max_element(vec.begin(),vec.end());
    return maxi;
}

int main(){
    
    std::vector<int> numbers;
    int n1;
    
    for (int i=0;i<4;i++){
        std::cin >> n1;
        numbers.push_back(n1);
    }
    
    std::cout << maxi(numbers);
    //std::cout << *max_element(numbers.begin(),numbers.end()) << std:: endl;
    
}
