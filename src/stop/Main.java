package stop;

public class Main {

	public static void main(String[] args) throws InterruptedException {

		Thread hilo = new Thread(() -> {
			for (int i = 0; i < 10; i++) {
				
				System.out.println(i);
				try {
					
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					System.out.println("Me paré");
					return;
					
				}
				
			}
		});
		
		hilo.start();
		
		Thread.sleep(5000);
		
		hilo.interrupt();
	}

}
