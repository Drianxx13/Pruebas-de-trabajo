package creationWay1;

public class CustomThread extends Thread{

	@Override
	public void run() {
		
		System.out.println("Me llamo " + this.getName() + 
				" y mi estado es " + this.getState());
	}
	

}
