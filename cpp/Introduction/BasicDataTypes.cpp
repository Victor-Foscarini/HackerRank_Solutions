#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int a;
    long b;
    char c;
    float d;
    double e;
    
    std::cin >> a;
    std::cin >> b;
    std::cin >> c;
    std::cin >> d;
    std::cin >> e;
    std::cout << a << endl << b << endl << c << endl; 
    std::cout << fixed << setprecision(3) << d << endl;
    std::cout << fixed << setprecision(9) << e << endl;
    
    return 0;
}
