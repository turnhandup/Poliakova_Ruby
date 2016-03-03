#include <iostream> 
#include <cmath> 
#include "ArrayReturn.h"
using namespace std; 
int main(void){
	cout<<"Cos(1) is : "<<my_cos(1)<<endl;
	cout<<"Sin(1) is : "<<my_sin(1)<<endl;
	cout<<"Square for array of 1,2,3:"<<endl;
	int size=3;
	double* arr1=new double[size];
	for (int i=0;i<3;i++){ 
		arr1[i]=i+1;
	}
	double* arr=exampleFunction(2, arr1, 3);
	for (int i=0;i<3;i++){ 
		cout<<arr[i]<<endl;
	}
	system("pause");
}