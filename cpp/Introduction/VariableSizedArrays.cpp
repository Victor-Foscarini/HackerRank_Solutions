#include <iostream>
#include <vector>
#include <algorithm>
//vector named array, nice thing

int main()
{
    int n;
    int q;
    
    std::vector<std::vector<int>>array;
    std::vector<int>num;
    
    std::cin >> n;
    std::cin >> q;
    
    int k;
    int t; //transition variable
    
    for(int i=0;i<n;i++){
        std::cin >> k;
        for(int j=0;j<k;j++){
            std::cin >> t;
            num.push_back(t);
        }
        //std::cout << num.begin(); //only to check
        array.push_back(num);
        num.erase(num.begin(),num.end());
    }
    
    int _i;
    int _j;
    std::vector<int> results;
    
    for (int i=0;i<q;i++){
        
        std::cin >> _i;
        std::cin >> _j;
        
        results.push_back(array[_i][_j]);
        
    }
    
    for (int x: results){
        std::cout << x << std::endl;
    }

    return 0;
}
