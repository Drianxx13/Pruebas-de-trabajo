package miPrograma;

import java.util.List;

public class Main {

	static List<String> messages = List.of("mensaje 1", "mensaje 2", "mensaje 3");
	static long waitTime = 30000;

	public static void main(String[] args) throws InterruptedException {
		
		Thread.currentThread().setName("thread1");
		
		long start = System.currentTimeMillis();
		
		Thread thread2 = new Thread(() -> {
			
			Thread.currentThread().setName("thread2");
			print("Iniciando proceso...");	
			
			try {
			for(String msg: messages) {
				
					Thread.sleep(2000);
					print(msg);
				} 
				print("Fin de los procesos");
				
			} catch (InterruptedException e) {
				print("Hilo interrumpido");
			}
			
		});
		thread2.start();
		System.out.println(thread2.getState());
		
		
		while(thread2.isAlive()) {
			print("sigo esperando...");
			thread2.join(1000L);
			long end = System.currentTimeMillis();
			long elapsed = end - start;
			if (elapsed > waitTime && thread2.isAlive()) {
				
				print("Debo continuar");
				thread2.interrupt();
				thread2.join();
				
			}

		}
		
		print("Finalizado");
		
	}
	
	static void print(String message) {
		
		String threadName = Thread.currentThread().getName();
		System.out.format("%s: %s%n", threadName, message);
		
	}

}
