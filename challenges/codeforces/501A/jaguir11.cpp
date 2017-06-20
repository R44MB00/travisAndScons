#include <iostream>
#include <math.h>

using namespace std;

/*
 * Codeforces 501A
 */

double getScore(int weight, int time){
    return max((3 * weight) / 10, weight - weight / 250 * time);
}

int main(){
    int a, b, c, d;
    double misha, vasya;
    cin >> a >> b >> c >> d;
    misha = getScore(a, c);
    vasya = getScore(b, d);
    if(misha > vasya) cout << "Misha" << endl;
    else if(vasya > misha) cout << "Vasya" << endl;
    else cout << "Tie" << endl;
    return 0;
}
