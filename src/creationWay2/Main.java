package creationWay2;

public class Main {

	public static void main(String[] args) {

		Thread hilo = new Thread(() -> System.out.println("Me llamo " + Thread.currentThread().getName()
				+ " y mi estado es " + Thread.currentThread().getState()));
		
		hilo.start();
		
		new Thread(() -> System.out.println(Thread.currentThread().getName())).start();;

	}

}
