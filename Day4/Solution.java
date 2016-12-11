public class Person {

    private int age;

	public Person(int initialAge) {
  		// Add some more code to run some checks on initialAge
        if(initialAge>0)
            age = initialAge;
        else{
            System.out.println("Age is not valid, setting age to 0.");
            age = 0;
        }
	}

	public void amIOld() {
  		// Write code determining if this person's age is old and print the correct statement:
        String message;
        if(age<13)
            message = "You are young.";
        else if(age>=13 && age<18)
                message = "You are a teenager.";
            else
                message = "You are old.";
        System.out.println(message);
	}

	public void yearPasses() {
  		// Increment this person's age.
        age = age + 1;
	}
