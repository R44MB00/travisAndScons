#include <iostream>
#include <string>

using namespace std;

/*
 * Codeforces 071A
 */

int main(){
    int n, l;
    string word, str, le;
    cin >> n;
    while(n--){
        cin >> word;
        l = word.length();
        if(l <= 10){
            cout << word << endl;
        }else{
            cout << word.substr(0, 1) << l - 2 << word.substr(l - 1, l) << endl;
        }
    }
    return 0;
}
