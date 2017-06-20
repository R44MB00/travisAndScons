//============================================================================
// Name        : Sort.cpp
// Author      : waldyd
// Version     :
// Copyright   : Your copyright notice
// Description : You have a matrix of integers of N*N size.
//				 You should sort the columns in the matrix by first row in ascending order.
//				 If the numbers in the first line are equal - you should sort it by the lowest number of second line,
//				 if numbers in the second line are also equal you should sort it by the next row etc.
//============================================================================

#include <iostream>
#include <fstream>
#include <vector>
#include <sstream>
//#include <map>
#include <algorithm>
#include <iterator>
//#include <string>

using namespace std;

vector<string> split(string line, string delimiter);
bool comparativeFunction(const vector<int>& a, const vector<int>& b);
vector< vector<int> > transpose(const vector< vector<int> > data);
string join (const vector< vector<int> > data, const char* separator);

int main(int argc, char *argv[]) {
    ifstream stream(argv[1]);
    string line;
    vector<string> matrizByRow;
    vector<int> rowValues;
    stringstream values;
    vector< vector<int> > matriz;
    //vector< vector<int> > sortedMatriz;
    int value;
    //vector< vector<int> >::iterator row;
    //vector<int>::iterator col;

    while (getline(stream, line)) {
    	matrizByRow = split(line, " | ");
    	//cout << matrizByRow.size() << endl;
    	for(size_t i=0; i < matrizByRow.size(); i++){
    		//cout << matrizByRow[i] << endl;
    		//stringstream values(matrizByRow[i]);
    		values << matrizByRow[i];
    		while (values >> value) {
    			//cout << value << endl;
    			rowValues.push_back(value);
    		}
    		values.str("");
    		values.clear();
    		matriz.push_back(rowValues);
    		//cout << rowValues[2] << endl;
    		rowValues.clear();
    	}
    	//cout << rowValues[2] << endl;
    	//cout << matriz[2][1] << " " << matriz[2][2] << endl;
    	//cout << comparativeFunction(matriz[0],matriz[1]) << endl;
    	matriz = transpose(matriz);
    	//cout << matriz[1][2] << endl;
    	sort(matriz.begin(), matriz.begin()+matriz.size(), comparativeFunction);
    	//cout << matriz[1][2] << endl;
    	matriz = transpose(matriz);
    	//cout << matriz[2][1] << " " << matriz[2][2] << endl;
    	cout << join(matriz, " | ") << endl;
    	matriz.clear();


    }
    return 0;
}

vector<string> split(string line, string delimiter) {
	size_t delimiterPosition = 0;
	string subString;
	vector<string> elements;
	while ((delimiterPosition = line.find(delimiter)) != std::string::npos) {
		subString = line.substr(0, delimiterPosition);
		elements.push_back(subString);
	    //cout << subString << endl;

	    line.erase(0, delimiterPosition + delimiter.length());
	}
	elements.push_back(line);
	//std::cout << line << std::endl;
	return elements;
}

bool comparativeFunction(const vector<int>& a, const vector<int>& b){
    for(size_t i = 0; i < a.size() && i < b.size(); i++){
         if(a[i] > b[i]) return false;
         else if(a[i] < b[i]) return true;
         //cout << a[i] << " " << b[i] << endl;
    }
    return false;
}

vector< vector<int> > transpose(const vector< vector<int> > data) {
    vector< vector<int> > result(data[0].size(), vector<int>(data.size()));
    for ( vector<int>::size_type i = 0; i < data[0].size(); i++)
        for ( vector<int>::size_type j = 0; j < data.size(); j++) {
            result[i][j] = data[j][i];
        }
    return result;
}

string join (const vector< vector<int> > data, const char* separator){
	vector< vector<int> > result(data[0].size(), vector<int>(data.size()));
	stringstream rowStream;
	vector<string> rowVector;

	for (size_t i = 0; i < data.size(); i++ ){
		copy(data[i].begin(), data[i].begin() + data[i].size(), ostream_iterator<int>(rowStream, " "));
		rowVector.push_back(rowStream.str().erase(rowStream.str().length()-1));
		rowStream.str("");
		rowStream.clear();
	}
	copy(rowVector.begin(), rowVector.begin() + rowVector.size(), ostream_iterator<string>(rowStream, separator));

	return rowStream.str().erase(rowStream.str().length()-3);
}

/*
vector<string> split(const string &line, char delimiter) {
    vector<string> elements;
    stringstream ss(line);
    string number;
    while(getline(ss, number, delimiter)) {
        elements.push_back(value);
    }
    return elements;
}
*/
