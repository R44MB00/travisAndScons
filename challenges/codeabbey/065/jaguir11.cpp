#include <iostream>
#include <math.h>
#include <vector>
#include <set>

using namespace std;

/*
 * Codeabbey 065
 */

struct road{
   string start, fni;
   int weight;

   road(string u, string v){
      start = u; fni = v; weight = 1;
   }

     road(){ }
};

vector <road> roads;
set<string> cities;
set<string>::iterator it;
int daMap[999][999];

void floyd_warshall(int n){

    for (int k = 0; k < n; ++k){
        for (int i = 0; i < n; ++i){
            for (int j = 0; j < n; ++j){
                daMap[i][j] = min(daMap[i][j], daMap[i][k] + daMap[k][j]);
            }
        }
    }

}

void init_city(int t){
    for(int i = 0; i < roads.size(); i++){
        int c = 0, c1 = 0, c2 = 0;
            for(it = cities.begin(); it != cities.end(); ++it){
                if(*it == roads[i].start){
                    c1 = c;
                }
                if(*it == roads[i].fni){
                    c2 = c;
                }
                c++;
            }
        daMap[c1][c2] = 1;
    }
    for(int j = 0; j < t; j++){
        for(int k = 0; k < t; k++){
            if(j != k && daMap[j][k] != 1){
                daMap[j][k] = 9999999;
            }
        }
    }
}

int main(){
    int n, m, t;
    string a, b, c;
    cin >> n;
    int cityMap [n][n];
    t = n;
    while(n--){
        cin >> a >> c >> b;
        roads.push_back(road(a, b));
        roads.push_back(road(b, a));
        cities.insert(a);
        cities.insert(b);
    }
    init_city(t);
    floyd_warshall(t);
    cin >> m;
    while(m--){
        cin >> a >> c >> b;
        int ind  = 0, ind1 = -1, ind2 = -1;
        for(it = cities.begin(); it != cities.end(); ++it){
            if(*it == a){
                ind1 = ind;
            }
            if(*it == b){
                ind2 = ind;
            }
            ind++;
        }
        cout << daMap[ind1][ind2] << endl;
    }
    return 0;
}
