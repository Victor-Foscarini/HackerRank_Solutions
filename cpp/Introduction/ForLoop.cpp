#include <iostream>
#include <iomanip>
#include <unordered_map>
#include <string>
using namespace std;


int main(){
    
    unordered_map<int,string> NUMBERS = { {1,"one"},{2,"two"},{3,"three"},{4,"four"},{5,"five"},{6,"six"},{7,"seven"},{8,"eight"},{9,"nine"}};
    int n1,n2;
    
    std::cin>>n1;
    std::cin>>n2;
    
    for (int i=n1;i<=n2;i++){
        
            if (1<=i && i<=9){
            cout << NUMBERS[i] << endl;
            
        }
        else{
            if (i%2==0){
                cout << "even" << endl;
            }
            else{
                cout << "odd" << endl;
            }
            
        }
    }
    
    return 0;
}
