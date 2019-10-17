import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        if(n < 0 || p < 0) {
            throw RangeError.NotInRange("n and p should be non-negative")
        } else if (p == 0) {
            return 1
        } else {
            var total = 1;
            for i in 1...p {
                total *= n
            }
            return total
        }
    } // End of function power
} // End of class Calculator

let myCalculator = Calculator()
