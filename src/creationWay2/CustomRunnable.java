package creationWay2;

public class CustomRunnable implements Runnable{

	@Override
	public void run() {
		
		System.out.println("Me llamo " + Thread.currentThread().getName() 
				+ " y mi estado es " + Thread.currentThread().getState());
		
	}

}
