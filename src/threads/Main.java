package threads;

public class Main {

	public static void main(String[] args) {
		
		Thread.getAllStackTraces().keySet().forEach(thread ->{
			System.out.println(thread.getId());
			System.out.println(thread.getPriority());
			System.out.println(thread.getName());
			System.out.println(thread.isAlive());
			System.out.println(thread.isInterrupted());
			System.out.println(thread.isDaemon());
			System.out.println("---------------------------------");
			
		});
		

	}

}
