package wait;

public class Main {

	public static void main(String[] args) {

		Thread hilo = new Thread(() -> {
			for (int i = 0; i < 10; i++) {
				
				System.out.println(i);
				try {
					
					Thread.sleep(500);
				} catch (InterruptedException e) {
					throw new RuntimeException(e);
					
				}
				
			}
		});
		
		hilo.start();
		
		try {
			hilo.join();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		
		
		System.out.println("Me llamo " + Thread.currentThread().getName()
				+ " y mi estado es " + Thread.currentThread().getState());
		
	}

}
