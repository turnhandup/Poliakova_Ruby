import java.lang.Math;
public class Example {
	Example(){}
	public double my_cos(int x){
		double result=Math.cos(x);
		return result;
	}
	public double my_sin(int x){
		double result2=Math.sin(x);
		return result2;
	}
	public double[] pow(double x, double[] array){  
		int size=array.length;
		double[] array2=new double[size]; 
			for(int i=0;i<3;i++){ 
				array2[i]=Math.pow(array[i], x); 
			} 
		return array2; 
	}
}
