#include <iostream>
#include <vector>
#include <algorithm>

int main()
{
    int n;
    int a;
    std::vector<int> num;
    
    std::cin >> n;
    
    for (int i=0;i<n;i++){
        std::cin >> a;
        num.push_back(a);
    }
    
    std::reverse(num.begin(),num.end());
    
    for (int i=0;i<n;i++){
        std::cout << num[i] << " ";
    }
    std::cout << std::endl;
    

    return 0;
}
