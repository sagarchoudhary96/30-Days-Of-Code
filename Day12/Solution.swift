import Foundation

//Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     */
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }
    
    //Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student
class Student: Person {
    var testScores: [Int]
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   firstName - A string denoting the Person's first name.
     *   lastName - A string denoting the Person's last name.
     *   id - An integer denoting the Person's ID number.
     *   scores - An array of integers denoting the Person's test scores.
     */
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }
    
    /*
     *   Method Name: calculate
     *   Return: A character denoting the grade.
     */
    //To calculate grade
    func calculate() -> Character {
        var total = 0;
        for testScore in testScores { total += testScore; }
        let avg = total / testScores.count;
        if avg >= 90 && avg <= 100 {
            return "O"
        }
        if avg >= 80 && avg < 90 {
            return "E"
        }
        if avg >= 70 && avg < 80 {
            return "A"
        }
        if avg >= 55 && avg < 70 {
            return "P"
        }
        if avg >= 40 && avg < 55 {
            return "D"
        }
        return "T"
    }
} // End of class Student

//Take input of student`s firstName, lastName, id and scores
let nameAndID = readLine()!.components(separatedBy: " ")
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

//Create Student class instance
let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)
s.printPerson()
print("Grade: \(s.calculate())")
