
public class Tester {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			Example ex=new Example();
			System.out.println("Cos(1) is: "+ ex.my_cos(1));
			System.out.println("Sin(1) is: "+ex.my_sin(1));
			System.out.println("Square for array of 1,2,3:");
			double[] array1={1,2,3};
			double[] empty = ex.pow(2,array1); 
			for(int i=0; i<empty.length; i++)
				System.out.println(empty[i]); 
	}

}
