#include <iostream>
#include <string>
int main()
{
    std::string a;
    std::string b;
    
    std::cin >> a;
    std::cin >> b;
    
    std::cout << a.size() << " " << b.size() << std::endl;
    std::cout << a+b << std::endl;
    
    char c = a[0]; //transition char
    a[0] = b[0];
    b[0] = c;
    
    std::cout << a << " " << b << std::endl;

    return 0;
}
