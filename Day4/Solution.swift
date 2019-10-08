class Person {
    var age: Int = 0
    
    init(initialAge: Int) {
        if initialAge > 0 {
            self.age = initialAge
        } else {
            print("Age is not valid, setting age to 0.")
            self.age = 0
        }
    }
    
    func yearPasses() {
        self.age += 1
    }
    
    func amIOld() {
        if self.age < 13 {
            print("You are young.")
        } else if self.age < 18 {
            print("You are a teenager.")
        } else {
            print("You are old.")
        }
    }
    
}
