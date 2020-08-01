#include <sstream>
#include <vector>
#include <iostream>

void printnumbers(std::string nums){
    std::stringstream str(nums);
    int num;
    char ch;
    while(str>>num){
        str >> ch;
        std::cout << num << std::endl;
    }
}

int main()
{
    std::string nums;
    std::cin >> nums;
    
    printnumbers(nums);

    return 0;
}
