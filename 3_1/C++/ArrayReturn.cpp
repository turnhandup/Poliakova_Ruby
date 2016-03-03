#include <iostream> 
#include <cmath> 
using namespace std; 

double my_cos(double x){
	return cos(x);
}
double my_sin(double x){
	return sin(x);
}
double* exampleFunction(int x, double* arr, int size){ 
	double* res= new double[size]; 
	for(int i=0; i<size; i++){ 
		res[i]=pow(arr[i], x); 
	} 
	return res; 
}
