package workshop;

public class Inheritance {
	static class Event {
		int participants;
	}
	static class Ophase extends Event {
		String motto;

		public Ophase(int participants, String motto) {
			this.participants = participants;
			this.motto = motto;
		}
	}
	
	public static void main(String[] args) {
		Ophase ophase_2022 = new Ophase(700, "Back to the future");
	}
}
