package creationWay1;

public class Main {

	public static void main(String[] args) {

		Thread hilo1 = new CustomThread();
		hilo1.start();
		
		Thread hilo2 = new CustomThread();
		hilo2.start();
		
		System.out.println("Me llamo " + Thread.currentThread().getName() 
				+ " y mi estado es " + Thread.currentThread().getState());

	}

}
