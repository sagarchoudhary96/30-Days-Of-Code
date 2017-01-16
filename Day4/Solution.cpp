class Person{
    public:
        int age;
        Person(int initialAge);
        void amIOld();
        void yearPasses();
    };


    Person::Person(int initialAge){
        // Add some more code to run some checks on initialAge
        if(initialAge>0)
            age = initialAge;
        else{
            cout <<"Age is not valid, setting age to 0.\n";
            age = 0;
        }
    }

    void Person::amIOld(){
        // Do some computations in here and print out the correct statement to the console
        string message;
        if(age<13)
            message = "You are young.";
        else if(age>=13 && age<18)
                message = "You are a teenager.";
            else
                message = "You are old.";
        cout << message << endl;

    }

    void Person::yearPasses(){
        // Increment the age of the person in here
        age = age + 1;

    }
