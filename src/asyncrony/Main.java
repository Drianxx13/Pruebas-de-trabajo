package asyncrony;

public class Main {

	public static void main(String[] args) {

		Thread thread1 = new Thread(() -> System.out.println("Soy el thread 1"));
		Thread thread2 = new Thread(() -> System.out.println("Soy el thread 2"));
		Thread thread3 = new Thread(() -> System.out.println("Soy el thread 3"));
		
		
		System.out.println("START");
		thread1.start();
		thread2.start();
		thread3.start();
		System.out.println("STOP");

	}

}
