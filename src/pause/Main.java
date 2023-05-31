package pause;

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

	}

}
